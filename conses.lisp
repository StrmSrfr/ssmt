;;;; conses.lisp

(in-package #:ssmt)

;(defun pmapc (function list &rest more-lists)
;  (let ((threads (apply #'mapcar (lambda (&rest args)
;                                          (make-thread (lambda ()
;                                                         (apply function args))))
;                         list more-lists)))
;    ;; threads are running
;    (mapc #'join-thread threads)
;    ;; now return what's specified
;    list))

(defun pmapc (function list &rest more-lists)
  (let ((futures (apply #'mapcar (lambda (&rest args)
                                   (pcall (lambda () (apply function args))))
                        list more-lists)))
    ;; threads are running maybe
    (mapc #'yield futures)
    ;; now return what's specified
    list))

(defun pmapcar (function list &rest more-lists)
  (let ((futures (apply #'mapcar (lambda (&rest args)
                                   (pcall (lambda () (apply function args))))
                        list more-lists)))
    ;; threads are running maybe
    (mapcar #'yield futures)))
