let%test _ = true

let%expect_test _ = 
  print_endline "hellO";
  [%expect{||}]