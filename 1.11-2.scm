;;f(n) = n if n < 3 and
;;f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3.
;;
;;Write a procedure that computes f by means of a recursive process.
;;Write a procedure that computes f by means of an iterative process.

;; For this one I wanted to focus on making sure I ran the correct number
;;of iterations on the iterative version, because getting that right was
;;kind of trial and error on the initial version, rather than something
;;I had reasoned about and was confident about. The way I decided it before
;;writing this version was asking myself "how many times do I want the 
;;iteration to run before hitting a base case?"

;; Because the function actually "runs" one iteration starting at n=3,
;;I decided that if I subtracted 2 from 3 to get my starting counter
;;value, then I could quit at 0 having run one iteration and get the
;;correct result. It worked, with much less tinkering than the first
;;version where I hadn't reasoned it out beforehand (although of course
;;having done the whole problem already cut out a lot of work in other
;;areas than the counter as well).

;; Another option would have been to handle the base cases in f itself
;;instead of messing around with cramming both the original n input from
;;the user and the iteration counter in the "n" variable. I.e. for 0-2
;;detect that in f, and only call f-iter for inputs actually requiring 
;;iteration. Thinking further though, I'd still need some offset of the 
;;input n as a counter, because that's how the function is defined --
;;the number input defines the number of iterations required to calculate
;;the result. So the question is really more of whether it's valuable to put
;;the base cases in the f function so the f-iter is just iteration. I 
;;tentatively think not -- f is there primarily to be a simplified procedure
;;so users don't have to think about the iteration, so it makes more
;;sense to keep all iteration-related logic in f-iter, even base cases.

;; Also, I have been typing manual line breaks and comments for each line just because I'm used to handling each source line by itself, but I bet Scheme is smart enough to detect a wrapped line or two and not barf if I let the editor handle line breaks for me. Just tested it: yep. It does kind of mess with cursor movement in Edwin though, so I'll probably keep typing them manually from now on.

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f (- n 1))
	 (* 2 (f (- n 2)))
	 (* 3 (f (- n 3))))))

(define (f n)
  (define (f-iter n x y z)
    (cond ((= x (- 2)) 0)
	  ((= x (- 1)) 1)
	  ((= x 0) z)
	  (else (f-iter (- n 1)
			y
			z
			(+ z
			   (* 2 y)
			   (* 3 x))))))
  (f-iter (- n 2) 0 1 2))