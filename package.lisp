;;;; package.lisp

(defpackage #:ssmt
  (:export #:pmapc #:pmapcar #:pmappend)
  (:use #:cl #:alexandria #:bordeaux-threads #:eager-future2))

