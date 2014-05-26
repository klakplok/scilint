#include "api_scilab.h"

/* ==================================================================== */
extern int ctest(int i);
/* ==================================================================== */
int sci_ctest(char *fname)
{
     SciErr sciErr;
     int iRet,iRows, iCols, complex;

     int *piAddr = NULL;
     
     double pdblReal;

     CheckInputArgument(pvApiCtx, 1, 1) ;
     CheckOutputArgument(pvApiCtx, 1, 1) ;

     sciErr = getVarAddressFromPosition(pvApiCtx, 1, &piAddr);
     if (sciErr.iErr)
     {
          printError(&sciErr, 0);
          return 0;
     }
     
     if ( !isDoubleType(pvApiCtx, piAddr) )
     {
          Scierror(999, "%s: Wrong type for input argument #%d: A double expected.\n", fname, 1);
          return 0;
     }
     
     sciErr = getVarDimension(pvApiCtx, piAddr, &iRows, &iCols);   
 
     
     if (iRows != 1 || iCols != 1) {
          Scierror(999, 
                   "%s: Wrong type for input argument #%d: A double (1 x 1) expected.\n", 
                   fname, 
                   1);
          return 1;
     }
     
     complex = isVarComplex(pvApiCtx, piAddr);
     
     if (complex) {
          Scierror(999, 
                   "%s: Wrong type for input argument #%d: don't know what to do with complex value.\n", 
                   fname, 
                   1);
          return 1;
     }
     
     iRet = getScalarDouble(pvApiCtx, piAddr, &pdblReal);
     
     if (iRet)
     {
          return iRet;
     }
     
     // Call OCaml code !!!
     ctest(0);
     //caml_startup(NULL);
     /* Do some computation */
     // ===================
     
     iRet = createScalarDouble(pvApiCtx, nbInputArgument(pvApiCtx) + 1, pdblReal);
     
     if (iRet)
     {
          return iRet;
     }
     

     AssignOutputVariable(pvApiCtx, 1) = nbInputArgument(pvApiCtx) + 1;
     ReturnArguments(pvApiCtx);
     
}
