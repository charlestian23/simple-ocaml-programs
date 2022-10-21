let list = [1; 2; 3; 4; 5]
let result = List.rev (List.rev_map (fun x -> x + 1) list)
let _ = print_endline ("[" ^ String.concat ", " (List.map string_of_int result) ^ "]")