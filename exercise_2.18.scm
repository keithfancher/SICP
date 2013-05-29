; Strike that; reverse it.
(define (rev l)
  (if (= 1 (length l))
    l
    (cons (rev (cdr l)) (car l))))


; Testing
(display (reverse (list 1 4 9 16 25)))
(newline)
(display (reverse (list 1 4)))
(newline)
(display (reverse (list 1)))
(newline)
