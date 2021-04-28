#lang racket
(require racket
         "slb.rkt")

(provide slb-len
         add-comma)

;; C-x-e -> eval last S-expr

;; String and symbols

(define (add-comma)
(string-join (map (lambda (x)
       (string-append x ", "))
     (list "A" "B" "C"))))

;; Closure 

(define (slb-len lst)
  (define (iter lst len)
    (cond  ;; TODO replace this with patterns?
      [(empty? lst) len]
      [else (iter (rest lst) (+ len 1))]))
  (iter lst 0)
)

