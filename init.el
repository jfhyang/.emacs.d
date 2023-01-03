;; --*-- lexical-binding: t -*-

; init modules
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

; init customize
(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'init-package)
(require 'init-frame)
(require 'init-window)
(require 'init-minibuffer)
(require 'init-alert)
(require 'init-file)
(require 'init-project)
(require 'init-buffer)
(require 'init-completion)
(require 'init-org)

(provide 'init)
