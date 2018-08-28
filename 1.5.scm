; p is defined as an infinitely recursive procedure, so if it's ever evaluated the
;process will never terminate. 

; If the interpreter uses applicative order evaluation, it will never terminate
;because (p) will be evaluated when the interpreter attempts to figure out the 
;value of test. The interpreter will attempt to figure out the value of each
;operand, and that evaluation of (p) will not terminate.

; If the interpreter uses normal order evaluation, it will terminate. In normal
;order, operands aren't evaluated until they are needed. Because (p) lies on
;the branch of the if statement that is not executed, it will never need to
;be evaluated and the expression will have the value 0.

; This problem is pretty cool. I'd read online some stuff about how Scheme can
;be used to manipulate not just data, but the program itself, and this was the 
;first glimpse. Instead of two code paths after an if statement, there's just
;one code path, and what that one path does is affected by the if. I'm excited
;to learn more!