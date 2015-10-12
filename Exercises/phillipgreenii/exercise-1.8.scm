(define (curt-iter previous-guess guess x)
  (if (good-enough? previous-guess guess)
      guess
      (curt-iter guess
                 (improve guess x)
                 x)))

(define (improve guess x)
 (average guess
          (/ (+ (/ x (square guess))
                (* 2 guess))
             3)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? previous-guess guess)
  (< (abs (- previous-guess guess)) 0.001))

(define (curt x)
  (curt-iter 0 1.0 x))

(define (square x) (* x x))

(define (cube x) (* x x x))

(curt 27)
(cube (curt 1000))


(cube (curt 0.00000000001))
(cube (curt 12345678901234))
