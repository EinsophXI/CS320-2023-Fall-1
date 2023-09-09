(*
Assign0-3: 10 points
Please implement a function that converts a given
integer to a string that represents the integer:
fun int2str(i0: int): string
*)

(*
let int2str (i0 : int) : string =
let i0 = i0 + 48 in (*i0 now contains ascii*)
let chr = Char.chr in (*chr now contains char*)
let c0 = chr i0 in
String.make 1 c0
;;

*)



(*
if input >= 10, needs to cut down to single digits
need a counter to figure out how large the string is going to be
needs to loop int2chr for each index starting from 0 meaning the first call should do the 'largest place'   
*)

let rec
int2chr (i0 : int) : char =
  if i0 >= 10 then 
    let x = int2chr(i0 mod 10) in (* runs the ones place *)
    let i0 = i0/10 in (* gets rid of ones place *)
    int2chr(i0) else (* runs with the tens as the new ones place *)
  let i0 = i0 + 48 in (*i0 now contains ascii*)
  let chr = Char.chr in (*chr now contains char*)
  chr i0
;;

let rec
exp (x : int) (y : int) : int =
if y > 1 then x * exp (x) (y-1) else
x
;;

let rec
size (x : int) : int =
let length = 0 in
  if x >= 10 then 1 + size(x/10) else 
    1
;;

let rec
int2str (i0 : int) : string =
let length = size(i0) in
String.init length (fun index -> int2chr(i0 mod (exp 10 (length-index))))
;;

(*
  if i0 >= 10 then 
    let x = int2str(i0 mod 10) in (* runs the ones place *)
    let i0 = i0/10 in (* gets rid of ones place *)
    int2str(i0) else (* runs with the tens as the new ones place *)
  let i0 = i0 + 48 in (*i0 now contains ascii*)
  let chr = Char.chr in (*chr now contains char*)
  let c0 = chr i0 in
  String.make 1 c0
  *)


let test = int2str(-2);;

(*

***** String.init size(i0) (fun index -> int2chr(i0))

String.init 5 (fun index -> Char.chr (index + 65))

let chr = Char.chr //needs ascii (int), returns char
0 - 9
48 - 57
let ord = Char.code //needs char, return ascii (int)
let str(c0) = String.make 1 c0

let string_init = String.init
let string_length = String.length
let string_get(cs, i0) = String.get cs i0
*)
(*
1254
0-9
125
4-> 40
12
5->41
1
2->38
1->37
*)