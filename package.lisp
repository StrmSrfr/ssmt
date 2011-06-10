;;;; package.lisp

(defpackage #:ssmt
  (:export #:pmapc)
  (:use #:cl #:alexandria #:bordeaux-threads #:eager-future2))

