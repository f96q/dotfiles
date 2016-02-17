(autoload 'javascript-mode "javascript-mode" "javascript" t)
(setq auto-mode-alist
      (append '(("\\.js$" . javascript-mode))
              auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.es6$" . javascript-mode))
              auto-mode-alist))

(add-hook 'javascript-mode-hook
          '(lambda()
             (progn
               (define-key javascript-mode-map "{" 'insert-braces)
               (define-key javascript-mode-map "(" 'insert-parens)
               (define-key javascript-mode-map "\"" 'insert-double-quotation)
               (define-key javascript-mode-map "[" 'insert-brackets)
               (define-key javascript-mode-map "\C-c}" 'insert-braces-region)
               (define-key javascript-mode-map "\C-c)" 'insert-parens-region)
               (define-key javascript-mode-map "\C-c]" 'insert-brackets-region)
               (define-key javascript-mode-map "\C-c\"" 'insert-double-quotation-region))))

