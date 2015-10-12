(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;; Since scheme is applicative-order, all sub expressions are evaluated
;;  before passing them to the parent expression, `if` must be a special form.
;; The reason can be illustrated with the above code examples.  Recursive
;;  functions must have some mechanism to stop recursing.  The code examples
;;  above attempts to use `new-if`, however, since `new-if` is a function, the
;;  `predicate`, `then-clause`, and `else-cause` all are evaluted.  The
;;  intention is to only evaluted the `then-clause` or `else-cause` depending
;;  on the `predicate`.  As a result, `sqrt-iter` will never stop recursing.
