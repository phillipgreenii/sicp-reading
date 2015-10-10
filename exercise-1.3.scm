;; previous definitions:
(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))

;; returns the sum of the squares of the two largest numbers
(define (sum-of-squares-of-largest x y z)
  (sum-of-squares
    (max x y z)
    (- (+ x y z)
       (max x y z)
       (min x y z))))


(sum-of-squares-of-largest 0 0 0)
; 0

(sum-of-squares-of-largest 5 4 3)
; 41

(sum-of-squares-of-largest 3 4 5)
; 41

(sum-of-squares-of-largest 3 5 4)
; 41

(sum-of-squares-of-largest 4 5 3)
; 41

(sum-of-squares-of-largest -4 -5 -3)
; 25

(sum-of-squares-of-largest 3 0 -3)
; 9
