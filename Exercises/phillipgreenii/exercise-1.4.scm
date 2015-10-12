;; The if expression is evaluated; either returning
;;  the `+` operator or the `-` operator.
;;  The returned operator is then evalauted with the remained arguments of
;;  `a` and `b`.
;; So if `b` is positive, then the result is calculated from `(+ a b)`
;;  else, the result is calculated from `(- a b)` which is the same as
;; `(+ a (- b))` or `(+ a (abs b))`
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
