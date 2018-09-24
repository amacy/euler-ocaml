let x = 600851475143
let range_max = 10000

let rec range l n max =
  if List.length l = max then List.rev l
  else range (n::l) (n + 1) max

let rec sieve_of_eratosthenes max l n =
  if n + 1 > max then l
  else
    let survivors = List.filter (fun y -> if y mod n = 0 then false else true) l in
      sieve_of_eratosthenes max (n::survivors) (n + 1)

let rec max l n =
  if List.length l = 0 then n
  else
    let candidate = List.hd l in
      if candidate > n then max (List.tl l) candidate
      else max (List.tl l) n

let process =
  let l = range [] 2 range_max in
    let primes = sieve_of_eratosthenes range_max l 2 in
      max primes 0
