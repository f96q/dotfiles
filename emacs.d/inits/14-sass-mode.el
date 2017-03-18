(require 'sass-mode)

(add-hook 'sass-mode-hook
          '(lambda()
             (progn
               (define-key sass-mode-map "{" 'insert-braces)
               (define-key sass-mode-map "(" 'insert-parens)
               (define-key sass-mode-map "\"" 'insert-double-quotation)
               (define-key sass-mode-map "[" 'insert-brackets)
               (define-key sass-mode-map "\C-c}" 'insert-braces-region)
               (define-key sass-mode-map "\C-c)" 'insert-parens-region)
               (define-key sass-mode-map "\C-c]" 'insert-brackets-region)
               (define-key sass-mode-map "\C-c\"" 'insert-double-quotation-region))))
