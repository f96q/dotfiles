(add-hook 'ag-mode-hook '(lambda ()
                           (require 'wgrep-ag)
                           (setq wgrep-auto-save-buffer t)
                           (setq wgrep-enable-key "r")
                           (wgrep-ag-setup)))

