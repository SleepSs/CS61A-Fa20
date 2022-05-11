(define (caar x) (car (car x)))

(define (cadr x) (car (cdr x)))

(define (cdar x) (cdr (car x)))

(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement


; ; Problem 15
; ; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 15
    (define (enumerate2 s count)
        (if (null? s)
            nil
            (cons (list count (car s)) (enumerate2 (cdr s) (+ count 1)))))
    (enumerate2 s 0)
  )


; END PROBLEM 15
; ; Problem 16
; ; Merge two lists LIST1 and LIST2 according to COMP and return
; ; the merged lists.
(define (merge comp list1 list2)
    ; BEGIN PROBLEM 16
    (cond
        ((equal? list1 nil) list2)
        ((equal? list2 nil) list1)
        ((comp (car list1) (car list2))
               (cons (car list1) 
                     (merge comp (cdr list1) list2)))
        (else
            (cons (car list2)
                     (merge comp list1 (cdr list2)))))
)


; END PROBLEM 16
(merge < '(1 5 7 9) '(4 8 10))

; expect (1 4 5 7 8 9 10)
(merge > '(9 7 5 1) '(10 8 4 3))

; expect (10 9 8 7 5 4 3 1)
; ; Problem 17
(define (nondecreaselist s)
  ; BEGIN PROBLEM 17
  'replace-this-line
)

; END PROBLEM 17
; ; Problem EC
; ; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr)))
)

(define lambda? (check-special 'lambda))

(define define? (check-special 'define))

(define quoted? (check-special 'quote))

(define let? (check-special 'let))

; ; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond 
    ((atom? expr)
     ; BEGIN PROBLEM EC
     'replace-this-line
     ; END PROBLEM EC
    )
    ((quoted? expr)
     ; BEGIN PROBLEM EC
     'replace-this-line
     ; END PROBLEM EC
    )
    ((or (lambda? expr) (define? expr))
     (let ((form (car expr))
           (params (cadr expr))
           (body (cddr expr))
          )
       ; BEGIN PROBLEM EC
       'replace-this-line
       ; END PROBLEM EC
     )
    )
    ((let? expr)
     (let ((values (cadr expr))
           (body (cddr expr))
          )
       ; BEGIN PROBLEM EC
       'replace-this-line
       ; END PROBLEM EC
     )
    )
    (else
     ; BEGIN PROBLEM EC
     'replace-this-line
     ; END PROBLEM EC
    )
  )
)
