;;;; ssmt.lisp

(in-package #:ssmt)

(defun map-to-futures (function &rest lists)
  "Like mapcar, except instead of returning the list of results,
we return a list of futures for those results."
  (apply #'mapcar (lambda (&rest args)
                    (pcall (lambda () (apply function args))))
         lists))

