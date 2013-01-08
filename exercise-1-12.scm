; Pascal's Triangle


; Dis is totally not right!
; Just do the next procedure
; This one (if it worked) would've only added existing numbers
; The next one assumes that an undefined location is 0'd
; It's also much less complicated!
(define (test depth)
  (/ (+ depth 1) 2))

(define (center? depth offset)
  (= offset (test depth)))

(define (left? depth offset)
  (< offset (test depth)))

(define (right? depth offset)
  (> offset (test depth)))

(define (triangle-el depth offset)
  (cond ((= offset 1) 1)
	((= depth offset) 1)
	((even? depth)
	 (+
	  (triangle-el (- depth 1) (- offset 1))
	  (triangle-el (- depth 1) offset)))
	((odd? depth)
	 (cond ((left? depth offset)
		(+
		 (triangle-el (- depth 1) (- offset 1))
		 (triangle-el (- depth 1) offset)))
	       ((or (right? depth offset) (center? depth offset))
		(+
		 (triangle-el (- depth 1) offset)
		 (triangle-el (- depth 1) (+ offset 1))))))))


; This one works nicely
(define (triangle-el depth offset)
  (cond ((= offset 1) 1)
	((= depth offset) 1)
	(else (+
	       (triangle-el (- depth 1) (- offset 1))
	       (triangle-el (- depth 1) offset)))))

; Now let's print out the triangle
(define (triangle depth)
  (cond (


