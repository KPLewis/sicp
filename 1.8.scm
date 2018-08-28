; Cube root action!

; A good enough guess is within 1% of the actual value
(define (good-enough? guess prev)
	(if (< (abs (/ (- guess prev) guess)) .01) #t #f))
	
(define (average x y) 
	(/ (+ x y) 2))
	
(define (improve-guess guess x)
	(/ (+ (/ x (square guess)) (* 2 guess)) 3))
	
(define (cube-root-iter guess prev x)
	(if (good-enough? guess prev)
		guess
		(cube-root-iter (improve-guess guess x) guess x)))