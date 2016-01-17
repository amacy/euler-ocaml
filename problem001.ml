let min = 1
let max = 1000

let is_divisible_by_three n =
  match (n mod 3) with
  | 0 -> true
  | _ -> false

let is_divisible_by_five n =
  match (n mod 5) with
  | 0 -> true
  | _ -> false

let rec get_total n sum = 
  if n = max then sum
  else if is_divisible_by_three n then get_total (n+1) (sum+n)
  else if is_divisible_by_five n then get_total (n+1) (sum+n)
  else get_total (n+1) sum

let process = get_total min 0
