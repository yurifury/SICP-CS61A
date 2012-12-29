; 1.1
10

(+ 5 3 4)

(- 9 1)

(/ 6 2)

(+ (* 2 4) (- 4 6))

(define a 3)

(define b (+ a 1))

(+ a b (* a b))

(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a ))

(* (cond ((> a b) a)
	 ((< a b) b)
	 (else -1))
   (+ a 1))

; 1.2

(/ (+ 5 (+ 4 (- 2 (- 3 (+ (/ 4 5) 6))))) (* 3 (- 6 2) (- 2 7)))

; 1.3
(define (square x)
  (* x x))

(define (sum-squares-largest-2 a b c)
  (cond ((and (> a c) (> b c)) (+ (square a) (square b)))
	((and (> a b) (> c b)) (+ (square a) (square c)))
	(else (+ (square b) (square c)))))

; 1.4

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; 1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; applicative-order evaluation:
;(test 0 (p))
;(test 0 (p)) -> infinite loop

; normal-order evaluation:
;(test 0 (p))

;(if (= 0 0)
;    0
;    (p)

;0


; 1.6

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
		 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

(square (sqrt 10000))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))

; STK crashes.

; This is because it attempts to get all the arguments to new-if
; before evaluating it.

; 1.7
(sqrt (square 9999999))


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001)

(good-enough? 1.0000000001 1.0 )

(sqrt 9)


; 1.8
(define (cubert-iter guess x)
  (if (good-enough-cube? guess x)
      guess
      (cubert-iter (improve-cubert guess x) x)))


(define (cubert x)
  (cubert-iter 1.0 x))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (improve-cubert guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))

(improve-cubert 2.5 27.0)

(define (good-enough-cube? guess x)
  (< (abs (- (cube guess) x)) 0.1))

(good-enough-cube? 2.999999999 27.0)


; 1.9

(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))

(+ 2 2)

(if (= 2 0) 2 (inc (+ (dec 2) 2)))
(inc (+ (dec 2) 2))
(inc (+ 1 2))
(inc (if (= 1 0) 2 (inc (+ (dec 1) 2))))
(inc (inc (+ (dec 1) 2)))
(inc (inc (+ 0 2)))
(inc (inc (if (= 0 0) 2 (inc (+ (dec 0) 2)))))
(inc (inc 2))
(inc 3)
4

; recursive procedure

(define (+ a b)
  (if (= a 0) b (+ (dec a) (inc b))))

(+ 4 5)

(if (= 4 0) 5 (+ (dec 4) (inc 5)))
(+ (dec 4) (inc 5))
(+ 3 6)
(if (= 3 0) 6 (+ (dec 3) (inc 6)))
(+ (dec 3) (inc 6))
(+ 2 7)
(if (= 2 0) 7 (+ (dec 2) (inc 7)))
(+ (dec 2) (inc 7))
(+ 1 8)
(if (= 1 0) 8 (+ (dec 1) (inc 8)))
(+ (dec 1) (inc 8))
(+ 0 9)
(if (= 0 0) 9 (+ (dec 0) (inc 9)))
9

; iterative procedure

; 1.10

(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1)
		 (A x (- y 1))))))

(A 1 10)
; 1024

(A 2 4)
; 65536

(A 3 3)
65536

(define (f n) (A 0 n))
(f 1)
; 2
(f 2)
;4
(f 3)
;6
(f 4)
;8
(f 5)
;10
; 2n


(define (g n) (A 1 n))
(g 1)
;2
(g 2)
;4
(g 3)
;8
(g 4)
;16
(g 5)
;32
;2^n

(define (h n) (A 2 n))
(h 1)
;2
(h 2)
;4
(h 3)
;16
(h 4)
;65536
; 2 up-arrow n

(define (k n) (* 5 n n))
; 5n^n





























	.0)
