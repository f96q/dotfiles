(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(setq auto-mode-alist
      (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))

(add-hook 'ruby-mode-hook
          '(lambda()
             (progn
               (define-key ruby-mode-map "{" 'insert-braces)
               (define-key ruby-mode-map "(" 'insert-parens)
               (define-key ruby-mode-map "\"" 'insert-double-quotation)
               (define-key ruby-mode-map "[" 'insert-brackets)
               (define-key ruby-mode-map "\C-c}" 'insert-braces-region)
               (define-key ruby-mode-map "\C-c)" 'insert-parens-region)
               (define-key ruby-mode-map "\C-c]" 'insert-brackets-region)
               (define-key ruby-mode-map "\C-c\"" 'insert-double-quotation-region)
               (define-key ruby-mode-map "\C-xr" 'refe2x)
               )))

