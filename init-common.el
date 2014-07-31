(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(gdb-many-windows t)
 '(gub-tooltip-mode t)
 '(column-number-mode t)
; '(current-language-environment "UTF-8")
 '(show-paren-mode t)
 '(x-select-enable-clipboard t)
 '(display-time-mode t)
 '(display-time-day-and-date t) 
 '(frame-title-format "%b@%f")    ; %f %b
 '(scroll-bar-mode nil)
 '(menu-bar-mode nil)
 '(tool-bar-mode nil)
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(if (or (equal system-type 'windows-nt)
	(equal system-type 'cygwin))
    (set-language-environment 'Chinese-GB)
  'not-the-os)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
;(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
;(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)

;start as a server
;(server-start)


(provide 'init-common)
