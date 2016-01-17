open OUnit2

let problem001 test_ctxt = assert_equal Problem001.process 233168 

let suite =
  "suite">:::
    ["problem001">:: problem001]

let () =
  run_test_tt_main suite
