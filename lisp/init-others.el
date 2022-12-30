
;;; Basic settings
; set custom-file in case writing generated setting to init.el
(setq custom-file (locate-user-emacs-file "custom.el"))
; show/hide frame element
(tool-bar-mode -1)


;;; ibuffer
; use ibuffer to replac, refer to https://www.emacswiki.org/emacs/IbufferMode
; (global-set-key (kbd "C-x C-b") 'ibuffer)

;;; org mode settings
(global-set-key (kbd "C-c c") #'org-capture)

(setq org-startup-indented t)
(setq org-default-notes-file "/Users/yangjiafei/Box Sync/Notes/inbox.org")

; (package-install 'projectile)

;;; completion configruaton
; company configuration
; (setq tab-always-indent 'complete)

(global-company-mode 1)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)
 
; (define-key company-active-map (kbd "C-n") 'company-select-next)
; (define-key company-active-map (kbd "C-p") 'company-select-previous)

;; 基于默认补全系统的垂直补全界面
(package-install 'vertico)
(vertico-mode t)

;; orderless completion
(package-install 'orderless)
(setq completion-styles '(orderless))

;; 补全候选项的旁注
(package-install 'marginalia)
(marginalia-mode t)

;; 上下文菜单
(package-install 'embark)
(global-set-key (kbd "C-;") 'embark-act)
(setq prefix-help-command 'embark-prefix-help-command)

;;  
(package-install 'consult)
(global-set-key (kbd "C-s") 'consult-line)
(package-install 'embark-consult)
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)
(global-set-key (kbd "C-x b") 'consult-buffer)

;;定位Lisp函数和变量
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(package-install 'org-modern)
(global-org-modern-mode)