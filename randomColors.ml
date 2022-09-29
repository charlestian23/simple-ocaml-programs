(**
    Random Colors
    =============
    Prints out 5 random colors
*)

Random.self_init ()

type color =
  | Red
  | Blue
  | Yellow
  | Green
  | RGB of int * int * int

let string_of_color = function
  | Red -> "Red"
  | Blue -> "Blue"
  | Yellow -> "Yellow"
  | Green -> "Green"
  | RGB (r, g, b) ->
      "RGB(" ^ string_of_int r ^ ", " ^ string_of_int g ^ ", " ^ (string_of_int b) ^ ")"

let get_random_color () =
  let n = Random.int 5 in
  if n = 0 then Red
  else if n = 1 then Blue
  else if n = 2 then Yellow
  else if n = 3 then Green
  else RGB (Random.int 255, Random.int 255, Random.int 255)

let _ =
  for i = 0 to 5 do
    print_endline (string_of_color (get_random_color ()))
  done
