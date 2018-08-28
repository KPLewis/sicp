; The initial good-enough? test fails for small numbers because it doesn't
;scale the required delta at all. For instance, if we tried to calculate
;the square root of .000000007 and our initial guess was .000005, it would
;pass the test despite doing no real work toward finding the right solution.

; The initial test fails for large numbers because calculations on large
;numbers on a normal system have limited precision. For instance, if Scheme
;has, say, 23 bits of precision on its large numbers, any number that doesn't
;fit in those bits will have some random digits on the end of it. If those
;random digits include the .001 place, the process will enter a loop that's
;basically infinite as it tries to get the numbers within .001 of each other.

; A good enough guess is within 1% of the actual value
(define (good-enough? guess prev)
	(if (< (abs (/ (- guess prev) guess)) .01) #t #f))
	
(define (average x y) 
	(/ (+ x y) 2))
	
(define (improve-guess guess x)
	(average guess (/ x guess)))
	
(define (sqrt-iter guess prev x)
	(if (good-enough? guess prev)
		guess
		(sqrt-iter (improve-guess guess x) guess x)))