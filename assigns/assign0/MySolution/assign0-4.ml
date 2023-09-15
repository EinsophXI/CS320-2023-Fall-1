(*
Assign0-4: 10 points
Please implement a function that converts a given
string to an integer:
fun str2int(cs: string): int
In particular, it is expected that str2int(int2str(x)) = x
*)
#use "assign0.ml";;
let rec
exp (x : int) (y : int) : int =
if y > 1 then x * exp (x) (y-1) else
x
;;

let
char2int(c : char) : int =
let x = ord c in
x - 48
;;

let rec
myloop (s : string) (index : int): int =
let x = 0 in
let string_length = String.length in
let length = string_length s in
let string_get(cs, i0) = String.get cs i0 in
if index = (length-1) then
  let a = string_get(s,length-1) in
  let x = x + (char2int(a)) in x else
  let a = string_get(s,index) in
  let x = x + (char2int(a) * exp 10 (length - (index + 1))) + myloop(s) (index + 1) in
  x
;;

let 
str2int (cs : string) : int =
let string_get(s, i0) = String.get s i0 in
if string_get (cs,0) = '-' then myloop(cs)(1) * -1 else
myloop(cs)(0)
(*if string_length cs > 1 then myloop(cs)(0) else
  char2int (string_get(cs,0))*)
;;

(*
let test = str2int("-111231223")
;;
*)