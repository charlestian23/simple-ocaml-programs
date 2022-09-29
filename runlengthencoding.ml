(**
    Run-length Encoding
    ===================
    Problem taken from https://ocaml.org/problems, see website for more details
*)

let encode list =
  let rec encode_sublist num encoded_list = function
    | [] -> []
    | [ x ] -> (1,  x) :: encoded_list
    | a :: (b :: _ as t) ->
        if a = b then encode_sublist (num + 1) encoded_list t
        else encode_sublist 1 ((num, a) :: encoded_list) t
  in
  List.rev (encode_sublist 1 [] list)

let string_of_encoded_item (a, b) = "(" ^ string_of_int a ^ ", \"" ^ b ^ "\")"

let encoded_list = encode ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e"]
let _ = print_endline ("[" ^ String.concat ", " (List.map string_of_encoded_item encoded_list) ^ "]")
