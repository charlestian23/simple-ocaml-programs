(**
    Create n-sized List
    ===================
    Given a number n, the program creates and prints out a list in the form of [1, 2, ..., n]
*)

let x = int_of_string Sys.argv.(1)

let rec create_list = function
  | 0 -> []
  | x -> create_list (x - 1) @ [ x ]

let list = create_list x
let _ = print_endline ("[" ^ String.concat ", " (List.map string_of_int list) ^ "]")
