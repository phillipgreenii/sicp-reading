(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;; with normal-order, arguments are only evaluated when needed,
;;  so in this case `test` is called but since, `(= x 0)` is true,
;;  `test` returns 0.

;; with applicative-order, arguments are evaluted before passed into parent
;;  expressions, so in this situation, `(p)` will be evaluted, but since it is
;;  a recursive function with no way to stop.  Either the call stack will fill
;;  up, or if `p` is tail recursion optimized, then the program will just loop
;;  forever.
