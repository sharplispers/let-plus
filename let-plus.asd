(defsystem "let-plus"
  :description "Destructuring extension of LET*."
  :author "Tamas K. Papp <tkpapp@gmail.com>."
  :maintainer "Sharp Lispers <sharplispers@googlegroups.com>"
  :license "Boost Software License - Version 1.0"
  :version "0.2"
  :serial t
  :components ((:file "package")
               (:file "let-plus")
               (:file "extensions"))
  :depends-on ("alexandria"
               "anaphora")
  :in-order-to ((test-op (test-op "let-plus/tests"))))

(defsystem "let-plus/tests"
  :description "Tests for the LET-PLUS library."
  :author "Tamas K. Papp <tkpapp@gmail.com>."
  :maintainer "Sharp Lispers <sharplispers@googlegroups.com>"
  :license "Same as LET-PLUS -- this is part of the latter."
  :serial t
  :components ((:file "tests"))
  :depends-on ("lift"
               "let-plus")
  :perform (test-op (operation component)
             (uiop:symbol-call '#:let-plus-tests '#:run)))
