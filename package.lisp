;;;; package.lisp

(defpackage #:ssmt
  (:export #:pmapc #:pmapcar)
  (:use #:cl #:alexandria #:bordeaux-threads #:eager-future2))

