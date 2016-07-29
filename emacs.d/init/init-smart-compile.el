(require 'smart-compile)

(setq smart-compile-alist
      (append
       '(("\\.go$" . "go run %f"))
                     smart-compile-alist))

(global-set-key (kbd "C-c c") 'smart-compile)
(global-set-key (kbd "C-c C-c") (kbd "C-c c C-m"))

