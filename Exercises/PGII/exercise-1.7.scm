(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
 (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x) (* x x))

(sqrt 9)
(square (sqrt 1000))

;; The following demonstrates a problem with `good-enough?`.  Since the square
;;  root is much smaller than the threashold in `good-enough?` the answer will
;;  always be wrong
(square (sqrt 0.00000000001))

;; The following demonstrates a second problem with `good-enough?`.  Computers
;;  generally work with a finite precision, ie only `x` number of digits can
;;  be non-trailing zeros.  Machines may vary, but the following line will not
;;  every finish.  The reason is that there is not enough precision to ever
;;  keep track of the decimal portions, so the difference between `guess` and
;;  `x` can never be less than `0.001`.
;(sqrt 12345678901234)

(define (sqrt-iter previous-guess guess x)
  (if (good-enough? previous-guess guess)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))

(define (good-enough? previous-guess guess)
  (< (abs (- previous-guess guess)) 0.001))

(define (sqrt x)
  (sqrt-iter 0 1.0 x))

(square (sqrt 0.00000000001))
(square (sqrt 12345678901234))

;; By changing `good-enough?` to compare `previous-guess` to `guess`, the never
;;  ending loop with very large numbers is resolved.  However, the problem with
;;  small number still exist.  The reasoning is the same as before.  
