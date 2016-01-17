open OUnit2

let problem001 test_ctxt = assert_equal Problem001.process 233168 
let problem002 test_ctxt = assert_equal Problem002.process 4613732 

let suite =
  "suite">:::
    ["problem001">:: problem001;
     "problem002">:: problem002]

let () =
  run_test_tt_main suite
