(**
    Average of n Random Numbers
    ===========================
    Given a number n, the generates a list of n random numbers and then calculates the average
*)

Random.self_init ()

let rec get_n_random_numbers = function
  | 0 -> []
  | x -> Random.int 100 :: get_n_random_numbers (x - 1)

let rec list_sum = function
  | [] -> 0
  | h :: t -> h + list_sum t

let x = int_of_string Sys.argv.(1)
let random_numbers = get_n_random_numbers x
let _ = print_endline ("[" ^ String.concat ", " (List.map string_of_int random_numbers) ^ "]")
let average = float_of_int (list_sum random_numbers) /. float_of_int (List.length random_numbers)
let _ = print_endline (string_of_float average)