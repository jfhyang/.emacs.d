

(global-company-mode 1)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)

; orderless completion
(package-install 'orderless)
(setq completion-styles '(orderless))

; 补全候选项的旁注
(package-install 'marginalia)
(marginalia-mode t)

; 上下文菜单
(package-install 'embark)
(global-set-key (kbd "C-;") 'embark-act)
(setq prefix-help-command 'embark-prefix-help-command)

;  
(package-install 'consult)
(global-set-key (kbd "C-s") 'consult-line)
(package-install 'embark-consult)
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)
(global-set-key (kbd "C-x b") 'consult-buffer)

(provide 'init-completion)