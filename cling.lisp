;;;; cling.lisp

(in-package #:cling)

(defmacro with-stock-page ((&key title address) &body body)
  `(spinneret:with-html-string
     (:doctype)
     (:html
      (:head
       (metas)
       (bootstrap-css)
       (:link :rel "stylesheet" :href "style.css")
       (:title ,title))
      (:body ,@body
             (bootstrap-js)))))
