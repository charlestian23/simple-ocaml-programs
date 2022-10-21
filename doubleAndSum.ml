let numbers = [1; 2; 3; 4; 5]
let sum list = List.fold_left (fun acc x -> acc + 2 * x) 0 list
let sum2 list = List.fold_right (fun x acc -> acc + 2 * x) list 0
let _ = print_int (sum2 numbers)
let _ = print_endline ""