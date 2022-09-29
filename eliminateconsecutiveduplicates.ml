(**
    Eliminate Consecutive Duplicate List Elements
    =============================================
    Problem taken from https://ocaml.org/problems, see website for more details
*)

let rec compress = function
  | x :: ( y :: _ as t) -> if x == y then compress t else x :: compress t
  | x -> x

let compressed_list =
  compress [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]

let _ = print_endline ("[" ^ String.concat ", " compressed_list ^ "]")