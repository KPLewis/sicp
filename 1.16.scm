;; This one didn't go well. I got stuck on trying to accumulate a running total
;;in "a" and I couldn't get it to work well across a range of input. I took
;;maintaining the invariant ab^n across states to mean that a needed to change,
;;when of course (particularly in light of the hint in the problem), changing
;;b and n, while leaving a unchanged, will also advance us toward a solution
;;without altering the invariant. 

;;I am glad I recognized that I was missing something simple and looked up the 
;;solution, though. Getting or missing a little insight like that isn't really
;;related to the core point of the problem, so I don't know that sitting on
;;this problem until I had the "aha!" moment would have been a good use of
;;time.

(define (fast-iter b n)
  (define (sq x) (* x x))
  (define (iter a b n)
    (cond ((= n 0) a)
	  ((even? n) a (sq b) (/ n 2))
	  (else (* a b) b (- n 1))))
  (iter 1 b n))
