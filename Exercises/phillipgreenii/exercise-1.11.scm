(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (* 2 (f-recursive (- n 2)))
         (* 3 (f-recursive (- n 3))))))

(f-recursive 2)
;2
(f-recursive 10)
;1892

(define (f-iterative n)
  (define (helper x a b c)
    (if (= x n)
        c
        (helper (+ x 1) b c (+ c
                               (* 2 b)
                               (* 3 a)))))
  (if (< n 3)
      n
      (helper 2 0 1 2)))

(f-iterative 2)
;2
(f-iterative 10)
;1892
