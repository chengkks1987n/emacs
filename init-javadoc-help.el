
(require 'javadoc-help) 
(javadoc-set-predefined-urls 
 '("F:\person\program\ref\jdk-6u30-apidocs\api"
   "http://docs.oracle.com/javase/6/docs/api/"))
(global-set-key (kbd "C-h j") 'javadoc-lookup)
;(global-set-key [(shift f1)]    'javadoc-help)    ; Shift-F1 to bring up menu  

(provide 'init-javadoc-help)
