
(defpackage :peterci.api-asd
  (:use :cl :asdf))


(in-package :peterci.api-asd)


(defsystem peterci.api
  :depends-on (:ningle
               :cl-dbi
               :clack
               :peterci.builder
               :peterci.db
               :peterci.repo)
  :components ((:module "api"
                :components
                ((:file "api")))))