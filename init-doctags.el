;;; doctags plugin for doxygen comment
;;; comment a tag with shorcut 'C-c d'
(require 'init-elpa)

(require-package 'doctags)
(require 'doctags)

(setq doctags-c-generator-command-style 'at-sign)
(setq doctags-c-generator-block-style 'javadoc)

(defun current-line ()
  "Return the vertical position of point..."
  (+ (count-lines (window-start) (point))
     (if (= (current-column) 0) 1 0)
     -1))

(defun my-c-generator-file-comment()
  "Return a skeleton describing a C-like comment string
documenting the whole file"
  `(nil > ,(doctags-c-generator-block-start) \n
	> , (doctags-c-generator-command "file") " " _ \n
	> , (doctags-c-generator-command "brief") " " _ \n
	> , (doctags-c-generator-command "date") " " _ \n
	> , (doctags-c-generator-command "version") " " _ \n
	> , (doctags-c-generator-command "author") " " _ \n
	> \n
	> , (doctags-c-generator-command "section Description") " " _ \n
	> \n
	> , (doctags-c-generator-block-end)))

(defun my-doxygen-file-comment ()
  (defun doit()
    (goto-char -1)
    (skeleton-insert (my-c-generator-file-comment)))
  (interactive)
  (if (= 0 (current-line))
      (doit)
    (doctags-document-current-tag)))

(add-hook 'c-mode-common-hook 
	  (lambda ()
	    (local-set-key (kbd "C-c d") 'my-doxygen-file-comment )))

(provide 'init-doctags)
