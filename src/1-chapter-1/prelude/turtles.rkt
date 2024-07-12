#lang racket

;; Turtle Procedure Notation: Prelude
;; Turtle Functions: Turtles
;; Version 0.1
;; [Jon Ruttan](jonruttan@gmail.com)
;; Creative Commons


;; Turtle Procedure Notation Turtle Graphics

;; Prelude B.0
;;
;; Initialize Turtle Graphics.
;;
(require graphics/turtles)
(turtles #t)

;; Prelude 1.0, p.4#fig.1.1a
;;
;; Rotate Turtle to match book orientation. 
;;
(turn 90)

;; Erases the turtles window.
(define (clearscreen)
  (clear)
  (turn 90))

;; Hold the state of the pen '(up down).
(define pen-state 'down)

;; Prelude 1.1
;; Formula 1.4, p.4#form.0
;;
;; PENDOWN
;;
(define (pendown)
  (set! pen-state 'down))

;; Prelude 1.2
;; Formula 1.5, p.4#form.1
;;
;; PENUP
;;
(define (penup)
  (set! pen-state 'up))

;; Prelude 1.3
;; Formula 1.0, p.3#form.0
;;
;; FORWARD <units>
;;
(define (forward n)
  (case pen-state
    [(up) (move n)]
    [(down) (draw n)]))

;; Prelude 1.4
;; Formula 1.2, p.3#form.2
;;
;; BACK <units>
;;
(define (back n)
  (forward (- n)))

;; Prelude 1.5
;; Formula 1.3, p.3#form.3
;;
;; LEFT <degrees>
;;
(define (left n)
  (turn n))

;; Prelude 1.6
;; Formula 1.1, p.3#form.1
;;
;; LEFT <degrees>
;;
(define (right n)
  (left (- n)))

(define (setheading n)
  '(not-implemented setheading))

(define (heading)
  '(not-implemented heading))

(define (setxy x y)
  '(not-implemented setxy))

(define (xcor)
  '(not-implemented xcor))

(define (ycor)
  '(not-implemented ycor))


(provide (all-defined-out))
