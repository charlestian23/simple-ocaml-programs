(** 
    Basic Cypher 
    ============ 
    Given a string consisting only of lowercase letters, word, and an integer, increment, from the command line, the program will increment each letter in word by increment. Note that after 'z', the program will wrap back to 'a'.

    Examples: word = "aaa", increment = 1 --> "bbb" word = "xyz",
    increment = 2 --> "zab" word = "abc", increment = -3 --> "xyz" 
*)

let increment_letter (letter : char) (increment : int) =
  let new_letter_number = int_of_char letter + increment in
  if new_letter_number < int_of_char 'a' then
    char_of_int (new_letter_number + 26)
  else if new_letter_number > int_of_char 'z' then
    char_of_int (new_letter_number - 26)
  else char_of_int new_letter_number

let rec encode_helper (word : string) (increment : int) =
  let length = String.length word in
  if length = 0 then word
  else
    Char.escaped (increment_letter word.[0] increment)
    ^ encode_helper (String.sub word 1 (length - 1)) increment

let encode (word : string) (offset : int) =
  let increment = offset mod 26 in
  encode_helper word increment

let word = Sys.argv.(1)
let increment = int_of_string Sys.argv.(2)
let _ = print_endline (encode word increment)
