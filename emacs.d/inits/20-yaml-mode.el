(require 'yaml-mode)

(add-hook 'yaml-mode-hook
          '(lambda()
             (progn
               (define-key yaml-mode-map "{" 'insert-braces)
               (define-key yaml-mode-map "(" 'insert-parens)
               (define-key yaml-mode-map "\"" 'insert-double-quotation)
               (define-key yaml-mode-map "[" 'insert-brackets)
               (define-key yaml-mode-map "\C-c}" 'insert-braces-region)
               (define-key yaml-mode-map "\C-c)" 'insert-parens-region)
               (define-key yaml-mode-map "\C-c]" 'insert-brackets-region)
               (define-key yaml-mode-map "\C-c\"" 'insert-double-quotation-region))))

