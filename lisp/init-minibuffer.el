; 基于默认补全系统的垂直补全界面
(package-install 'vertico)
(vertico-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-minibuffer)