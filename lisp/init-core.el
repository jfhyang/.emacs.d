; initialize core emacs features

; set custom-file in case writing generated setting to init.el
(setq custom-file (locate-user-emacs-file "custom.el"))

;;; keep the ui simple
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(set-scroll-bar-mode nil)

; use ibuffer to replac, refer to https://www.emacswiki.org/emacs/IbufferMode
(global-set-key (kbd "C-x C-b") 'ibuffer)

; save your sessions, refer to: https://www.emacswiki.org/emacs/Desktop
(desktop-save-mode 1)

(provide 'init-core)
