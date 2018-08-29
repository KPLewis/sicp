What are the values of the following expressions?

(A 1 10)
; (A 0 (A 1 9))
; (A 0 (A 0 (A 1 8)))
; Sequence continues until the 10th just returns 2
; That is then returned to 9 successive (A 0 y) calls, each of which
; multiplies the result by 2
; 2^10

(A 2 4)
; (A 2 4)
; (A 1 (A 2 3))
; (A 1 (A 1 (A 2 2)))
; (A 1 (A 1 (A 1 (A 2 1))))
; (A 1 (A 1 (A 1 2)))
; (A 1 (A 1 (A 0 (A 1 1))))
; (A 1 (A 1 (A 0 2)))
; (A 1 (A 1 4))
; (A 1 16)
; 2^16

(A 3 3)
; (A 3 3)
; (A 2 (A 3 2))
; (A 2 (A 2 (A 3 1)))
; (A 2 (A 2 2))
; (A 2 (A 1 (A 2 1)))
; (A 2 (A 1 2))
; (A 2 (A 0 (A 1 1)))
; (A 2 (A 0 2))
; (A 2 4)
; 2^16




