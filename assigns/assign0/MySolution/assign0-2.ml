(*
Assign0-2: 10 points
Please implement a function that tests whether a
given natural number is a prime:
fun isPrime(n0: int): bool
)
( 0 and 1 are not prime so make base cases for these*)




let inc x = x + 1;;

let rec 
 prime(x : int) (count : int) : bool =
  if x <= 1 then false
  else if x = count then true
  else if x mod count = 0 then false
  else (
  prime(x) (inc(count))
)
;;


let
isPrime (n0 : int) : bool =
prime(n0) (2)
;;

let test = isPrime(9)
;;