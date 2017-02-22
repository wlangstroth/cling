(in-package #:cling)

(defun canonical-links (canonical title)
  (with-html
    (:link :rel "canonical" :href canonical)
    (:link :rel "index" :title title :href canonical)))

(defun bootstrap-css ()
  (with-html
    (:comment "Bootstrap CSS")
    (:link :rel "stylesheet" :href "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" :integrity "sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" :crossorigin "anonymous")))

(defun bootstrap-js ()
  (with-html
    (:comment "Bootstrap JavaScript")
    (:script :src "https://code.jquery.com/jquery-3.1.1.slim.min.js"
             :integrity "sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n"
             :crossorigin "anonymous")
    (:script :src "https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" :integrity "sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" :crossorigin "anonymous")
    (:script :src "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" :integrity "sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" :crossorigin "anonymous")))

(defun metas ()
  (with-html
    (:meta :name "viewport"
           :content "width=device-width, initial-scale=1, shrink-to-fit=no")))

(defun facebook-metas (canonical title description image)
  (with-html
    (:comment "Facebook")
    (:meta :property "og:url" :content canonical)
    (:meta :property "og:title" :content title)
    (:meta :property "og:description" :content description)
    (:meta :property "og:image" :content image)))

(defun google-tracking (ua-number)
  (with-html
    (:comment "Google Analytics")
    (:script (concatenate 'string "(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');ga('create', 'UA-" ua-number "-1', 'auto');ga('send', 'pageview');"))))
