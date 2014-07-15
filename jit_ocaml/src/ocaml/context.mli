type ctx
type ptr_int
type scierr

external get_var_adress_from_position: unit -> unit  = "caml_get_var_adress_from_position"
external is_string_type: ctx -> ptr_int -> bool = "caml_is_string_type"
external get_allocated_single_string: ctx -> ptr_int -> string = "caml_get_allocated_single_string"
external free_allocated_single_string: string -> unit = "caml_free_allocated_single_string"
external get_var_address_from_name: ctx -> string -> ptr_int = "caml_get_var_address_from_name"
external get_nb_input_argument: ctx -> int = "caml_get_nb_input_argument"
external assign_output_variable: ctx -> string -> unit = "caml_assign_output_variable"
external return_arguments: ctx -> int = "caml_return_arguments"
external check_input_argument: ctx -> int -> int -> int = "caml_check_input_argument"
external check_input_argument_at_least: ctx -> int -> int = "caml_check_input_argument_at_least"
external check_input_argument_at_most: ctx -> int -> int = "caml_check_input_argument_at_most"
external check_output_argument: ctx -> int -> int -> int = "caml_check_output_argument"
external check_output_argument_at_least: ctx -> int -> int = "caml_check_output_argument_at_least"
external check_output_argument_at_most: ctx -> int -> int = "caml_check_output_argument_at_most"
external call_overload_function: ctx -> int -> string -> int -> int = "caml_call_overload_function"
external call_scilab_function: ctx -> string -> int -> int -> int -> int = "caml_call_scilab_function"
external get_var_address_from_name: ctx -> int -> ptr_int -> scierr = "caml_get_var_address_from_name"
external get_var_type: ctx -> ptr_int -> ptr_int -> scierr = "caml_get_var_type"
external get_named_var_type: ctx -> string -> ptr_int -> scierr = "caml_get_named_var_type"
external is_var_complex: ctx -> ptr_int -> int = "caml_is_var_complex"
external is_named_var_complex: ctx -> string -> int = "caml_is_named_var_complex"
external get_var_dimension: ctx -> ptr_int -> ptr_int -> ptr_int -> scierr = "caml_get_var_dimension"
external get_named_var_dimension: ctx -> ptr_int -> ptr_int -> ptr_int -> scierr ="caml_get_named_var_dimension"
external is_var_matrix_type: ctx -> ptr_int -> int = "caml_is_var_matrix_type"
external is_named_var_matrix_type: ctx -> string -> int = "caml_is_named_var_matrix_type"
external get_process_mode: ctx -> int -> ptr_int -> ptr_int = "caml_get_process_mode"
external get_dim_from_var: ctx -> ptr_int -> ptr_int -> scierr = "caml_get_dim_from_var"
external get_dim_from_named_var: ctx -> ptr_int -> ptr_int -> scierr = "caml_get_dim_from_named_var"
external get_rhs_from_address: ctx -> ptr_int -> int = "caml_get_rhs_from_address"
external is_row_vector: ctx -> ptr_int -> int = "caml_is_row_vector"
external is_column_vector: ctx -> ptr_int -> int = "caml_is_column_vector"
external is_vector: ctx -> ptr_int -> int = "caml_is_vector"
external is_scalar: ctx -> ptr_int -> int = "caml_is_scalar"
external is_square_matrix: ctx -> ptr_int -> int = "caml_is_square_matrix"
external check_var_dimension: ctx -> ptr_int -> int -> int -> int = "caml_check_var_dimension"
external get_input_argument_type: ctx -> int -> int = "caml_get_input_argument_type"
external check_input_argument_type: ctx -> int -> int -> int = "caml_check_input_argument_type"
external is_empty_matrix: ctx -> ptr_int -> int = "caml_is_empty_matrix"
external create_empty_matrix: ctx -> int -> int = "caml_create_empty_matrix"
external create_named_empty_matrix: ctx -> string -> int = "caml_create_named_empty_matrix"
external is_named_var_exist: ctx -> string -> int = "caml_is_named_var_exist"
external is_named_row_vector: ctx -> string -> int = "caml_is_named_row_vector"
external is_named_column_vector: ctx -> string -> int = "caml_is_named_column_vector"
external is_named_vector: ctx -> string -> int = "caml_is_named_vector"
external is_named_scalar: ctx -> string -> int = "caml_is_named_scalar"
external is_named_square_matrix: ctx -> string -> int = "caml_is_named_square_matrix"
external is_named_empty_matrix: ctx -> string -> int = "caml_is_named_empty_matrix"
external delete_named_variable: ctx -> string -> int = "caml_delete_named_variable"
external increase_val_ref: ctx -> ptr_int -> int = "caml_increase_val_ref"
                           
