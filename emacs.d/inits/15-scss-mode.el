(require 'scss-mode)

(add-hook 'scss-mode-hook
          '(lambda()
             (progn
               (define-key scss-mode-map "{" 'insert-braces)
               (define-key scss-mode-map "(" 'insert-parens)
               (define-key scss-mode-map "\"" 'insert-double-quotation)
               (define-key scss-mode-map "[" 'insert-brackets)
               (define-key scss-mode-map "\C-c}" 'insert-braces-region)
               (define-key scss-mode-map "\C-c)" 'insert-parens-region)
               (define-key scss-mode-map "\C-c]" 'insert-brackets-region)
               (define-key scss-mode-map "\C-c\"" 'insert-double-quotation-region))))

