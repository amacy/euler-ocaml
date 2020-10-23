let min = 1
let max = 1000

let rec get_total n sum = 
  if n = max then sum
  else if (n mod 3 = 0 || n mod 5 = 0) then get_total (n+1) (sum+n)
  else get_total (n+1) sum

let process = get_total min 0
