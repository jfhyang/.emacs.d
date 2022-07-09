;;; emacs init entry


; load feature from lisp folder
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-core)
(require 'init-gui)

(require 'init-org)

(provide 'init)
