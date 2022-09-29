(**
    Palindrome
    ==========
    Checks if an inputted word is a palindrome
*)

let rec is_palindrome word =
  if String.length word <= 1 then true
  else if not (word.[0] = word.[String.length word - 1]) then false
  else is_palindrome (String.sub word 1 (String.length word - 2))

let word = Sys.argv.(1)
let _ = print_endline (string_of_bool (is_palindrome word))