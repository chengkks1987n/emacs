
;;open hide-show mode, ref http://www.emacswiki.org/emacs/HideShow
    (load-library "hideshow")
    (global-set-key (kbd "C--") 'hs-toggle-hiding)

    (add-hook 'c-mode-common-hook   'hs-minor-mode)
    (add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
    (add-hook 'java-mode-hook       'hs-minor-mode)
    (add-hook 'lisp-mode-hook       'hs-minor-mode)
    (add-hook 'perl-mode-hook       'hs-minor-mode)
    (add-hook 'sh-mode-hook         'hs-minor-mode)
    (add-hook 'c++-mode-hook   'hs-minor-mode)
(provide 'init-hideshow)
