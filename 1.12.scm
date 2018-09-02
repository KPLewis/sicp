;; Write a procedure that computes elements of Pascal\u2019s triangle by means of a recursive process. 

;; Pre-planning: First I need to decide how to represent Pascal's triangle in
;;my procedure. My first inclination is to use an array, which is kind of 
;;weird and doesn't seem particularly well-suited to the result needed even
;;if I knew what an array in Scheme looked like. So I guess my first order
;;of business is to see how to embed lists within lists in Scheme to represent
;;Pascal's triangle.

;; Actually, not going to do that. Just going to take a row and a column
;;and calculate what's there rather than representing the entire triangle.

;; Post-solution analysis: This one breaks down pretty simply for a recursive
;;solution. The only tricky part was my first solution didn't account for
;;base cases on the right side of the triangle, probably because I'm so used
;;to counting down for base cases. Once I added in the equality check things
;;looked good! I'm sort of struggling to see what a "true" iterative solution
;;would look like though. Memoization could probably solve most of the problem
;;but I'm not sure whether it would be possible to capture the state of the
;;calculation in a set number of state variables as in 1.11 part 2.

(define (pascal r c)
  (if (or (= c 0)
	  (= c r))
      1
      (+ (pascal (- r 1) (- c 1))
	 (pascal (- r 1) c))))
