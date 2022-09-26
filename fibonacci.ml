(**
  Fibonacci
  =========
  Given a number, x, from the command line, the program will print out the xth Fibonacci number
*)
let x = int_of_string Sys.argv.(1)
let rec helper n pp p =
  if n = 1 then p else helper (n - 1) p (pp + p)
let fibonacci n = if n = 0 then 0 else helper n 0 1
let _ = print_endline (string_of_int (fibonacci x))