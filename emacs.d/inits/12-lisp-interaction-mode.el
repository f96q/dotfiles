(add-hook 'lisp-interaction-mode-hook
          '(lambda()
             (progn
               (define-key lisp-interaction-mode-map "{" 'insert-braces)
               (define-key lisp-interaction-mode-map "(" 'insert-parens)
               (define-key lisp-interaction-mode-map "\"" 'insert-double-quotation)
               (define-key lisp-interaction-mode-map "[" 'insert-brackets)
               (define-key lisp-interaction-mode-map "\C-c}" 'insert-braces-region)
               (define-key lisp-interaction-mode-map "\C-c)" 'insert-parens-region)
               (define-key lisp-interaction-mode-map "\C-c]" 'insert-brackets-region)
               (define-key lisp-interaction-mode-map "\C-c\"" 'insert-double-quotation-region))))
