#lang racket

;; Turtle Procedure Notation: Prelude
;; Language Constructs
;; Version 0.1
;; [Jon Ruttan](jonruttan@gmail.com)
;; Creative Commons


;; Prelude A.1, p.398#form.0
;;
;; REPEAT <number> <commands>
;;
(define-syntax repeat
  (syntax-rules ()
    [(repeat n expr ...)
     (let loop ([count n])
       (when (> count 0)
         expr ...
         (loop (sub1 count))))]))

;; Prelude A.2, p.398#form.1
;;
;; REPEAT FOREVER <commands>
;;
(define-syntax forever
  (syntax-rules ()
    [(forever expr ...)
     (let loop ()
       expr ...
       (loop))]))

;; Prelude A.3, p.398#form.2
;;
;; REPEAT UNTIL <condition> <commands>
;;
(define-syntax until
  (syntax-rules ()
    [(until pred expr ...)
     (do ()
       (pred)
       expr ...)]))

;; Prelude A.4, p.398#form.3
;;
;; REPEAT <commands> UNTIL <condition>
;;
(define-syntax do-until
  (syntax-rules ()
    [(repeat-until pred expr ...)
     (let loop ()
       expr ...
       (unless pred (loop)))]))

;; Prelude A.5, p.401#form.0
;;
;; ITEM(L,N)
;;
(define (item l n) (list-ref l (sub1 n)))

;; Prelude A.6, p.403#form.0
;;
;; EXECUTE s
;;
(define (execute s)
  (eval (call-with-input-string s read)))


(provide (all-defined-out))
