(** 
    Factorial using Pattern Matching 
    ================================
    The code in factorial.ml rewritten to use pattern matching 
*)

let x = int_of_string Sys.argv.(1)
let rec factorial = function 
  | 0 | 1 -> 1 
  | x -> x * factorial (x - 1)
let _ = print_endline (string_of_int (factorial x))
