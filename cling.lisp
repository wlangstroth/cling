;;;; cling.lisp

(in-package #:cling)

;;; Layouts

(defmacro with-stock-page ((&key title address) &body body)
  "Standard example page from Bootstrap documentation"
  `(with-html-string
     (:doctype)
     (:html
      (:head
       (metas)
      (facebook-metas ,address "" "" "")
       (bootstrap-css)
       (:link :rel "stylesheet" :href "style.css")
       (:title ,title))
      (:body ,@body
             (bootstrap-js)))))

(defmacro with-blog-page ((&key title address) &body body)
  "Example blog page from Bootstrap"
  `(with-html-string
     (:doctype)
     (:html
      (:head
       (metas)
       (facebook-metas ,address "" "" "")
       (bootstrap-css)
       (:link :rel "stylesheet" :href "style.css")
       (:title ,title))
      (:body ,@body
             (bootstrap-js)))))

(defmacro with-simple-page ((&key title) &body body)
  "Stock page without facebook or twitter, etc"
  `(with-html-string
     (:doctype)
     (:html
      (:head
       (metas)
       (bootstrap-css)
       (:link :rel "stylesheet" :href "style.css")
       (:title ,title))
      (:body ,@body
             (bootstrap-js)))))
