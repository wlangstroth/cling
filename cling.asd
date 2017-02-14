;;;; cling.asd

(asdf:defsystem #:cling
  :description "Describe cling here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :depends-on (#:spinneret
               #:spinneret/cl-markdown)
  :serial t
  :components ((:file "package")
               (:file "helpers")
               (:file "cling")))
