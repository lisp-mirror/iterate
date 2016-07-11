;;; -*- lisp -*- system definition

(defsystem :iterate
  :description "Jonathan Amsterdam's iterator/gatherer/accumulator facility"
  :licence "MIT"
  :components ((:file "package")
               (:file "iterate" :depends-on ("package"))))

;; TODO probably we should retire this into an examples directory
(defsystem :iterate/pg
  :depends-on (:iterate pg)		; Eric Marsden's pg.lisp
  :components ((:file "iterate-pg")))

(defsystem :iterate/tests
  :depends-on (:iterate #+sbcl :sb-rt #-sbcl :rt)
  :components ((:file "iterate-test")))

(defmethod asdf:perform ((op asdf:test-op) (c (eql (find-system ':iterate))))
  (asdf:load-system :iterate/tests)
  (funcall (intern "DO-TESTS" (find-package #+sbcl "SB-RT"
                                            #-sbcl "REGRESSION-TEST"))))
