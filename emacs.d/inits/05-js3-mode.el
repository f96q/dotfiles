(autoload 'js3-mode "js3-mode" "js" t)
(setq auto-mode-alist
      (append '(("\\.js$" . js3-mode))
              auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.es6$" . js3-mode))
              auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.vue$" . js3-mode))
              auto-mode-alist))

(add-hook 'js3-mode-hook
          '(lambda()
             (progn
               (define-key js3-mode-map "{" 'insert-braces)
               (define-key js3-mode-map "(" 'insert-parens)
               (define-key js3-mode-map "\"" 'insert-double-quotation)
               (define-key js3-mode-map "[" 'insert-brackets)
               (define-key js3-mode-map "\C-c}" 'insert-braces-region)
               (define-key js3-mode-map "\C-c)" 'insert-parens-region)
               (define-key js3-mode-map "\C-c]" 'insert-brackets-region)
               (define-key js3-mode-map "\C-c\"" 'insert-double-quotation-region))))
