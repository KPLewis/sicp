; The program will enter an infinite loop. Since new-if is not a special form,
;applicative order will mean that both branches are evaluated when the procedure
;is called. Further, since there would be nothing else for the procedure to do
;after it returns, it will enter the infinite loop due to tail recursion instead
;of causing a stack overflow.