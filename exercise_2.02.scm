; Construct a point form two coordinates.
(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

; Construct a line segment from two points.
(define (make-segment start end) (cons start end))

(define (start-segment seg) (car seg))

(define (end-segment seg) (cdr seg))

; Return midpoint of given segment.
(define (midpoint-segment seg)
  (let ((x1 (x-point (start-segment seg)))
        (x2 (x-point (end-segment seg)))
        (y1 (y-point (start-segment seg)))
        (y2 (y-point (end-segment seg))))
    (make-point (/ (+ x1 x2) 2)
                (/ (+ y1 y2) 2))))


; Testing:
(define test-point (make-point 1 2))
(print-point test-point)
(newline)
(define test-seg (make-segment (make-point 0 0) (make-point 2 0)))
(print-point (midpoint-segment test-seg)) ; (1, 0)
(newline)
(define test-seg (make-segment (make-point 0 0) (make-point 2 2)))
(print-point (midpoint-segment test-seg)) ; (1, 1)
(newline)
