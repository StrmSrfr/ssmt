;;;; ssmt.asd

(asdf:defsystem #:ssmt
  :serial t
  :depends-on (#:alexandria
               #:bordeaux-threads
               #:eager-future2)
  :components ((:file "package")
               (:file "ssmt")
               (:file "conses")))

