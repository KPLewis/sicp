;; This one went a lot faster than the previous one. I wasn't able to find
;;a way to really calculate the invariant I wanted to use. I just tried a few
;;multiplications on paper with various test algorithms, making a little
;;change after each one that seemed like it might be useful, until I happened
;;upon x+ab as an invariant, which worked out well. It would be interesting
;;to know if invariants are calculable from a recursive definition, or if 
;;finding them is just part of the art of problem solving.

(define (double x) (* x 2))

(define (halve x) (/ x 2))

; Use invariant x+ab
(define (mult a b)
  (if (even? b) 
      (double (mult a (halve b)))
      (+ a (* a (- b 1)))))
      