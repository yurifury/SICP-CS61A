;; Exercise 1a.
;; Type your code here and then test your code
;; By copying and pasting it into the interpreter to try it out.
; (NOTE: The interpreter can't see any lines prepended
; with a semicolon)

; 48÷(2×(9+3)) and (48÷2)×(9+3)
(/ 48 (* 2 (+ 9 3)))
(* (/ 48 2) (+ 9 3))

;; Exercise 1b.
(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

; This should output 25
(sum-of-squares 3 4)

;; Exercise 2.
(define (second wd)
  (first (butfirst wd)))

;; This should output o
(second 'fox)

;; Exercise 3a.
(define (can-drive? age)
  (if (< age 16)
      '(not yet)
      '(Good to go)))

;; This should output (not yet)
(can-drive? 15)

;; These should output (Good to go)
(can-drive? 16)
(can-drive? 20)

;; Exercise 3b.
(define (fizzbuzz n)
  (cond ((= 0 (remainder n 3) (remainder n 5)) 'fizzbuzz)
	((= 0 (remainder n 3)) 'fizz)
	((= 0 (remainder n 5)) 'buzz)
	(else n)))


;; Fizz
(fizzbuzz 6)
;; Buzz
(fizzbuzz 10)
;; FizzBuzz
(fizzbuzz 15)
;; 11
(fizzbuzz 11)


;;Homework

; Exercise 4
(define (infinite-loop) (infinite-loop))

(if (= 3 6)
    (infinite-loop)
    (/ 4 2))

(define (new-if test then-case else-case)
  (if test
      then-case
      else-case))

(new-if (= 3 6)
	(infinite-loop)
	(/ 4 2))

;; This goes into an infinite loop because the arguments to a
;; procedure get recursively resolved before passed as formal
;; parameters to the procedure. Thus, it tries to get the value of
;; infinite-loop before running new-if.
