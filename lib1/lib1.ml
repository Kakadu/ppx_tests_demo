
let%test _ = true

let%expect_test _ =
  print_endline "hello";
  [%expect{| hello |}]

let%expect_test _ =
  let _ = assert false in
  [%expect.unreachable]
[@@expect.uncaught_exn {|
  (* CR expect_test_collector: This test expectation appears to contain a backtrace.
     This is strongly discouraged as backtraces are fragile.
     Please change this test to not include a backtrace. *)
  "Assert_failure lib1/lib1.ml:9:10"
  Raised at Lib1.(fun) in file "lib1/lib1.ml", line 9, characters 10-22
  Called from Ppx_expect_nobase_runtime__Test_block.Configured.dump_backtrace in file "ppx_expect/runtime/test_block.ml", line 142, characters 10-28
  |}]
