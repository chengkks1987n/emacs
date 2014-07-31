
(require 'cedet)
(require 'semantic/ia)

(dolist (hook '(emacs-lisp-mode-hook  
		c-mode-hook  
                c++-mode-hook  
                java-mode))
  (add-hook hook (lambda ()
		   (semantic-mode)
		   (global-semantic-decoration-mode)
		   (global-semantic-highlight-edits-mode)
		   (global-semantic-highlight-func-mode)
		   (global-semantic-idle-breadcrumbs-mode)
		   (global-semantic-idle-completions-mode)
		   (global-semantic-idle-local-symbol-highlight-mode)
		   (global-semantic-idle-scheduler-mode)
		   (global-semantic-idle-summary-mode)
		   (global-semantic-mru-bookmark-mode)
		   (global-semantic-show-parser-state-mode)
		;(global-semantic-show-unmatched-syntax-mode)
		   (global-semantic-stickyfunc-mode)
		   (global-semanticdb-minor-mode))))

(provide 'init-cedet)
