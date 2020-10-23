open OUnit2

let problem001 _ = assert_equal Problem001.process 233168
let problem002 _ = assert_equal Problem002.process 4613732
let problem003 _ = assert_equal Problem003.process 6857

let suite =
  "suite" >::: [
    "problem001" >:: problem001;
    "problem002" >:: problem002;
    "problem003" >:: problem003
   ]

let () =
  run_test_tt_main suite
