(**
    Pack Consecutive Duplicates
    ===========================
    Problem taken from https://ocaml.org/problems, see website for more details
*)

let pack list =
  let rec pack_sublists current packed_list = function
    | [] -> []
    | [ x ] -> (x :: current) :: packed_list
    | a :: (b :: _ as t) ->
        if a = b then pack_sublists (a :: current) packed_list t
        else pack_sublists [] ((a :: current) :: packed_list) t
  in
  List.rev (pack_sublists [] [] list)

let packed_list_to_string list =
  let rec helper = function
  | [] -> []
  | h::t -> ("[" ^ String.concat "," h ^ "]") :: helper t in
  "[" ^ String.concat ", " (helper list) ^ "]"

let packed_list = pack ["a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "d"; "e"; "e"; "e"; "e"]
let _ = print_endline (packed_list_to_string packed_list)