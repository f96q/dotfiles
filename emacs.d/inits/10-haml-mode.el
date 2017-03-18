(require 'haml-mode)

(add-hook 'haml-mode-hook
          '(lambda()
             (progn
               (define-key haml-mode-map "{" 'insert-braces)
               (define-key haml-mode-map "(" 'insert-parens)
               (define-key haml-mode-map "\"" 'insert-double-quotation)
               (define-key haml-mode-map "[" 'insert-brackets)
               (define-key haml-mode-map "\C-c}" 'insert-braces-region)
               (define-key haml-mode-map "\C-c)" 'insert-parens-region)
               (define-key haml-mode-map "\C-c]" 'insert-brackets-region)
               (define-key haml-mode-map "\C-c\"" 'insert-double-quotation-region))))
