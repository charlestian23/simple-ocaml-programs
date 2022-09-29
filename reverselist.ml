(**
    Reversing a List
    ================
    Generates a list of 6 random integers and then prints out the list and its reverse
*)

Random.self_init ()

let rec get_n_random_numbers = function
  | 0 -> []
  | x -> Random.int 100 :: get_n_random_numbers (x - 1)

let rec reverse_list = function
  | [] -> []
  | h :: t -> reverse_list t @ [ h ]

let random_list = get_n_random_numbers 6
let _ = print_endline ("[" ^ String.concat ", " (List.map string_of_int random_list) ^ "]")

let _ =
  print_endline ("[" ^ String.concat ", " (List.map string_of_int (reverse_list random_list)) ^ "]")
