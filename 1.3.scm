;;; My version
;;; I like that it's concise and builds a couple of abstractions
;;; that may be reusable (square, max)
(define (square x) (* x x))

(define (sum-squares x y) (+ (square x) (square y)))

(define (max a b) (if (> a b) a b))

(define (sum-max-squares x y z)
	(if (> x y)
		(sum-squares x (max y z))
		(sum-squares y (max x z))))
		
;;; Version from the Scheme community wiki
;;; Easier to understand because all the comparisons are spelled out
;;; Somewhat more verbose as a result
;;; I don't find sqsumlargest to be an intuitive name
 (define (square x) (* x x)) 
  
 (define (sumsquares x y) (+ (square x) (square y))) 
  
 (define (sqsumlargest a b c) 
     (cond  
         ((and (>= a c) (>= b c)) (sumsquares a b)) 
         ((and (>= b a) (>= c a)) (sumsquares b c)) 
         ((and (>= a b) (>= c b)) (sumsquares a c)))) 
		 
		 
;;; https://github.com/areina/sicp-exercises/blob/master/exercise-1.3
;;; This developer got the procedure definition down to one pretty readable line
(define (biggest-square-sum a b c)
  (square-sum (biggest a b) (biggest (smallest a b) c)))