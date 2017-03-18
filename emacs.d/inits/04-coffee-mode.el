(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-hook 'coffee-mode-hook
          '(lambda()
             (progn
               (define-key coffee-mode-map "{" 'insert-braces)
               (define-key coffee-mode-map "(" 'insert-parens)
               (define-key coffee-mode-map "\"" 'insert-double-quotation)
               (define-key coffee-mode-map "[" 'insert-brackets)
               (define-key coffee-mode-map "\C-c}" 'insert-braces-region)
               (define-key coffee-mode-map "\C-c)" 'insert-parens-region)
               (define-key coffee-mode-map "\C-c]" 'insert-brackets-region)
               (define-key coffee-mode-map "\C-c\"" 'insert-double-quotation-region)
               )))

