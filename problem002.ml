let max = 4000000
let starting_sequence = [1; 2]

let next_fibonacci_number sequence =
  let length = List.length sequence in
    let x = List.nth sequence (length-1) in
      let y = List.nth sequence (length-2) in
        x + y

let rec generate_fibonacci sequence =
  let next_number = next_fibonacci_number sequence in
    if next_number > max then sequence
    else generate_fibonacci (sequence @ [next_number])
    
let sum l = List.fold_left (+) 0 l

let keep_evens n = 
  match (n mod 2) with
  | 0 -> n
  | _ -> 0

let process =
  sum (List.map keep_evens (generate_fibonacci starting_sequence))
