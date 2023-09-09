(*
Assign0-1: 10 points
Please find the first integer N such that the
evaluation of fact(N) in OCaml yields an Overflow
exception.
*)

let rec
fact(x: int): int =
if x > 0 then x * fact(x-1) else 1
;;

let fact64 = fact(64)
;;

let rec
myloop(x: int): int =
if fact(x) = 0 then x else myloop(x+1)
;;
let myloop0 = myloop(0)
;;