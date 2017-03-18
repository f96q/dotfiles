(require 'swift-mode)

(add-hook 'swift-mode-hook
          '(lambda()
             (progn
               (define-key swift-mode-map "{" 'insert-braces)
               (define-key swift-mode-map "(" 'insert-parens)
               (define-key swift-mode-map "\"" 'insert-double-quotation)
               (define-key swift-mode-map "[" 'insert-brackets)
               (define-key swift-mode-map "\C-c}" 'insert-braces-region)
               (define-key swift-mode-map "\C-c)" 'insert-parens-region)
               (define-key swift-mode-map "\C-c]" 'insert-brackets-region)
               (define-key swift-mode-map "\C-c\"" 'insert-double-quotation-region))))

