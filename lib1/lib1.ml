let%test _ = true

let%expect_test _ =
  print_endline "hello";
  [%expect{||}]

let%expect_test _ =
  let _ = assert false in
  [%expect{||}]



  (*  *)
(*  *)
