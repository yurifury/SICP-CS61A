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
