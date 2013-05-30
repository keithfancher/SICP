; square a list without map and...
(define (square-list items)
  (if (null? items)
    items ; nil isn't defined in my environment for some reason, so just use items
    (cons ((lambda (x) (* x x)) (car items))
          (square-list (cdr items)))))

; ...with map
(define (square-list-2 items)
  (map (lambda (x) (* x x)) items))


; Testing:
(display (square-list (list 1 2 3 4 5 6 7 8)))
(newline)
(display (square-list-2 (list 1 2 3 4 5 6 7 8)))
(newline)
