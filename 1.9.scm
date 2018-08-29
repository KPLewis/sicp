; SICP Exercise 1.9

(define (+ a b)
  (if (= a 0) 
      b 
      (inc (+ (dec a) b))))

; Substitution
;(+ 4 5)
;(inc (+ (dec 4) 5))
;(inc (inc (+ (dec 3) 5)))
;(inc (inc (inc (+ (dec 2) 5))))
;(inc (inc (inc (inc (+ (dec 1) b)))))
;(inc (inc (inc (inc (5)))))
;(inc (inc (inc (6))))
;(inc (inc (7)))
;(inc 8)
;9
; Recursive - can tell from the shape of the expansion, and also from the fact
;that work remains in the calling proceduring (the inc call) to be done after
;control returns from the recursive procedure call to +

(define (+ a b)
  (if (= a 0) 
      b 
      (+ (dec a) (inc b))))

; Substitution
(+ 4 5)
(+ (dec 4) (inc 5))
(+ (dec 3) (inc 6))
(+ (dec 2) (inc 7))
(+ (dec 1) (inc 8))
9

; Iterative - again it's clear from the shape of the substitution, and we can
;also see it because there are specific state variables (a and b) that 
;completely capture the calculation, with nothing implict that needs to be 
;tracked by the interpreter.