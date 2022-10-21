let list = [1; 2; 3; 4; 5]
let even n = n mod 2 = 0
let result = List.filter even list
let _ = print_endline ("[" ^ String.concat ", " (List.map string_of_int result) ^ "]")