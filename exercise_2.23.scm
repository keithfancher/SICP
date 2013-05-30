; for each element, perform func... impement for-each
(define (my-for-each func x)
  (let ((item (car x))
        (rest (cdr x)))
    (func item)
    (if (null? rest)
      #t
      (my-for-each func rest))))


; Testing
(my-for-each (lambda (x) (display x) (newline))
             (list 57 321 88))
