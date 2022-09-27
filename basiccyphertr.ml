(**
  Basic Cypher using Tail Recursion
  =================================
  The code in basiccypher.ml rewritten to use tail recursion.
*)

let increment_letter (letter : char) (increment : int) = 
  let new_letter_number = int_of_char(letter) + increment in
  if new_letter_number < int_of_char('a') then char_of_int(new_letter_number + 26)
  else if new_letter_number > int_of_char('z') then char_of_int(new_letter_number - 26)
  else char_of_int(new_letter_number)

let rec encode_aux (word : string) (increment : int) (acc : string) =
  let length = String.length word in
  if length = 0 then acc
  else encode_aux (String.sub word 1 (length - 1)) increment (acc ^ (Char.escaped (increment_letter word.[0] increment)))

let encode_tr(word : string) (offset : int) =
  let increment = offset mod 26 in (encode_aux word increment "")

let word = Sys.argv.(1)
let increment = int_of_string Sys.argv.(2)
let _ = print_endline(encode_tr word increment)