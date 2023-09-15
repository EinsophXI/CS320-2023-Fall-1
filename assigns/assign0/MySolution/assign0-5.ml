(*
Assign0-5: 10 points
Please implement a function that returns the reverse of
a given string:
fun stringrev(cs: string): string
Note that you are not allowed to use string concatenation
or your solution is disqualified.
*)
#use "assign0.ml";;

let
stringrev(cs : string): string =
(*let string_init = String.init in*)
(*let slength = String.length in*)
let length = string_length cs in
(*let string_get(cs, i0) = String.get cs i0 in*)
string_init length (fun index -> string_get(cs,length-(1+index)))
;;
(*
let test = stringrev("Hello World")
;;
*)