#lang racket

(require "prelude/constructs.rkt")
(require "prelude/turtles.rkt")

;; Computation 1.1.1.0, p.5#comp.0
;; 
;; TO SQUARE
;;    FORWARD 100
;;    RIGHT 90
;;    FORWARD 100
;;    RIGHT 90
;;    FORWARD 100
;;    RIGHT 90
;;    FORWARD 100
;;    RIGHT 90
;;
; NOTE: Renamed from `square` here to avoid namespace clash.
(define (square-alt0)
  (forward 100)
  (right 90)
  (forward 100)
  (right 90)
  (forward 100)
  (right 90)
  (forward 100)
  (right 90))

;; Example 1.1.1.0, p.5#ex.0
;; 
;; SQUARE
;;
; NOTE: Renamed from `square` here to avoid namespace clash.
(square-alt0)

; ACTION: Save snapshot ex.1.1.1.0
(clearscreen)


;; Computation 1.1.1.1, p.5#comp.1
;; 
;; TO SQUARE
;;    REPEAT 4
;;       FORWARD 100
;;       RIGHT 90
;;
;;
; NOTE: Renamed from `square` here to avoid namespace clash.
(define (square-alt1)
  (repeat 4
    (forward 100)
    (right 90)))


;; Computation 1.1.1.2, p.5#comp.2
;; 
;; TO SQUARE SIZE
;;    REPEAT 4
;;       FORWARD SIZE
;;       RIGHT 90
;;
; NOTE: Renamed from `square` here to avoid namespace clash.
(define (square-alt2 size)
  (repeat 4
    (forward size)
    (right 90)))

;; Example 1.1.1.1, p.6#ex.0
;; 
;; SQUARE 100
;;
; NOTE: Renamed from `square` here to avoid namespace clash.
(square-alt2 100)

; ACTION: Save snapshot ex.1.1.1.1
(clearscreen)


;; Computation 1.1.1.3, p.6#comp.0
;; 
;; TO SQUAREPIECE SIZE
;;    FORWARD SIZE
;;    RIGHT 90
;;
(define (squarepiece size)
  (forward size)
  (right 90))

;; Computation 1.1.1.4, p.6#comp.1
;; 
;; TO SQUARE SIZE
;;    REPEAT 4
;;      SQUAREPIECE SIZE
;;
; NOTE: Renamed from `square` here to avoid namespace clash.
(define (square-alt3 size)
  (repeat 4 (squarepiece size)))

;; Example 1.1.1.2, p.6#ex.0
;; 
;; SQUARE 100
;;
; NOTE: Renamed from `square` here to avoid namespace clash.
(square-alt3 100)

; ACTION: Save snapshot ex.1.1.1.2
(clearscreen)


;; Computation 1.1.1.5, p.6#comp.2
;; 
;; TO RECTANGLE SIDE1 SIDE2
;;    REPEAT 2
;;       SQUAREPIECE SIDE1
;;       SQUAREPIECE SIDE2
;;
;; Computation 1.1.1.6, p.6#comp.3
;; 
;; TO RECTANGLE (SIDE1, SIDE2)
;;    REPEAT 2
;;       SQUAREPIECE (SIDE1)
;;       SQUAREPIECE (SIDE2)
;;
(define (rectangle side1 side2)
  (repeat 2
          (squarepiece side1)
          (squarepiece side2)))

;; Example 1.1.1.3, p.6#ex.1
;; 
;; RECTANGLE 100 50
;;
(rectangle 100 50)

; ACTION: Save snapshot ex.1.1.1.3
