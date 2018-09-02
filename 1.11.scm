;;f(n) = n if n < 3 and
;;f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3.
;;
;;Write a procedure that computes f by means of a recursive process.
;;Write a procedure that computes f by means of an iterative process.

; How to break things up: The references to f(n-1), f(n-2),
; and f(n-3) are pretty obviously our subproblems. A recursive solution
; will have the same duplicated computation we saw a couple times in the
; reading, but that's to be expected. The iterative version should get
; rid of that duplication, similar to the Fibonacci iterative version.

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
	 (* 2 (f-rec (- n 2)))
	 (* 3 (f-rec (- n 3))))))

(define (f n)
  (f-iter (- n 2) 0 1 2))

(define (f-iter n x y z)
  (cond ((= n (- 2)) 0)
	((= n (- 1)) 1)
	((= n 0) z)
	(else
	 (f-iter (- n 1) y z (+ z
				(* 2 y)
				(* 3 x))))))












