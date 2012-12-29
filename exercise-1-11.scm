;f(n) = n if n < 3
;f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3

;recursive
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(f 4)
;f(4)
;f(3) + 2f(2) + 3f(1)
;f(2) + 2f(1) + 3f(0) + 2f(2) + 3f(1)
(+ 2 2 0 4 3)

;itrative
; a = n
;

(define (g n)
  (iter-g 0 n 0 0 0))

(define (formula n1 n2 n3)
  (+ n1 (* 2 n2) (* 3 n3)))

(define (iter-g current n n1 n2 n3)
  (if (= current n)
      (if (< current 3)
	  current
	  (formula n1 n2 n3))
      (iter-g
       (+ 1 current) ;current
       n ;n
       (if (< current 3) current (formula n1 n2 n3)) ;n1
       n1 ;n2
       n2))) ;n3

