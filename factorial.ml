(**
    Factorial
    =========
    Given a number, x, from the command line, the program will print out x!
*)

let x = int_of_string Sys.argv.(1)
let rec fact n = if n = 0 then 1 else n * fact (n - 1)
let _ = print_endline (string_of_int (fact x))
