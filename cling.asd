;;;; cling.asd

(asdf:defsystem #:cling
  :description "Handy web utilities"
  :author "Your Name <your.name@example.com>"
  :license "MIT"
  :depends-on (#:spinneret
               #:spinneret/cl-markdown)
  :serial t
  :components ((:file "package")
               (:file "helpers")
               (:file "cling")))
