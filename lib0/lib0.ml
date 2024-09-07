let%test _ = true

let rec fac n = if n<=1 then 1 else n * fac (n-1)

(* This should fail *)
let%test _ = false
