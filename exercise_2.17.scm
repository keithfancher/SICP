; Return list containing final element of non-empty list:
(define (last-pair l)
  (if (= 1 (length l))
    l
    (last-pair (cdr l))))


; Testing:
(display (last-pair (list 1 2 3 4)))
(newline)
(display (last-pair (list 23 72 149 34)))
(newline)
