; Determine a given number in Pascal's triangle. (row, col). Indexes starting
; with 1 (for no real reason other than that's how I did it).
(define (pascal row col)
  (cond ((and (= row 1) (= col 1)) 1)
        ((or (< col 1) (> col row)) 0)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))


; Testing:
(display (pascal 1 1)) ; should be 1
(newline)
(display (pascal 3 2)) ; should be 2
(newline)
(display (pascal 5 3)) ; should be 6
(newline)
(display (pascal 7 5)) ; should be 15
(newline)
