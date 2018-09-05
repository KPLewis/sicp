;; To solve this, I defined b' as b after one transformation, and b'' as
;;b after 2 transformations (which is the goal). b' is given in the problem
;;in terms of p and q. I first defined b'' in terms of b' and a', then
;;substituted the definitions of a' and b' so b'' was expressed in terms of
;;a and b, thus representing two transformations in terms of the starting 
;;values.

;; From there I just did algebra to find that b'' = b(p^2 + q^2) +
;;a(2pq + q^2). Since that's in the same form as the definition of b's
;;transformationg given in the problem (b = bp + aq), it's apparent that 
;;p' (the p value that covers two transforms) is p^2 + q^2, and q'
;;is 2pq+q^2. 

;; Bill the Lizard did a great writeup showing all the intermediate steps,
;;check that if you are stuck.

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) 
         b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (sq p) (sq q))  ;compute p'
                   (+ (* 2 p q) (sq q))  ;compute q'
                   (/ count 2)))
        (else 
         (fib-iter (+ (* b q) 
                      (* a q) 
                      (* a p))
                   (+ (* b p) 
                      (* a q))
                   p
                   q
                   (- count 1)))))

(define (sq x) (* x x))