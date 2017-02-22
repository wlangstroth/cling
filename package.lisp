;;;; package.lisp

(defpackage #:cling
  (:use #:cl #:spinneret)
  (:export #:with-stock-page
           #:with-simple-page
           #:canonical-links
           #:bootstrap-css
           #:bootstrap-js
           #:metas
           #:facebook-metas
           #:google-tracking))
