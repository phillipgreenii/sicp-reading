(define (pascal-triangle-value l p)
  (cond ((> p l) (warn "p must be less then or equal to l"))
        ( (or (= p 0)
              (= p l)) 1)
        (else (+ (pascal-triangle-value (- l 1) (- p 1))
                 (pascal-triangle-value (- l 1) p)))))

(pascal-triangle-value 0 0)
;1

(pascal-triangle-value 1 0)
;1

(pascal-triangle-value 1 1)
;1

(pascal-triangle-value 2 1)
;2

(pascal-triangle-value 4 2)
;6

(pascal-triangle-value 5 2)
;10
