(add-hook 'elm-mode-hook
          '(lambda()
             (progn
               (define-key elm-mode-map "{" 'insert-braces)
               (define-key elm-mode-map "(" 'insert-parens)
               (define-key elm-mode-map "\"" 'insert-double-quotation)
               (define-key elm-mode-map "[" 'insert-brackets)
               (define-key elm-mode-map "\C-c}" 'insert-braces-region)
               (define-key elm-mode-map "\C-c)" 'insert-parens-region)
               (define-key elm-mode-map "\C-c]" 'insert-brackets-region)
               (define-key elm-mode-map "\C-c\"" 'insert-double-quotation-region))))
