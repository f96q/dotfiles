(autoload 'typescript-mode "typescript-mode" "typescript" t)
(setq auto-mode-alist
      (append '(("\\.tsx?$" . typescript-mode))
              auto-mode-alist))

(add-hook 'typescript-mode-hook
          '(lambda()
             (progn
               (define-key typescript-mode-map "{" 'insert-braces)
               (define-key typescript-mode-map "(" 'insert-parens)
               (define-key typescript-mode-map "\"" 'insert-double-quotation)
               (define-key typescript-mode-map "[" 'insert-brackets)
               (define-key typescript-mode-map "\C-c}" 'insert-braces-region)
               (define-key typescript-mode-map "\C-c)" 'insert-parens-region)
               (define-key typescript-mode-map "\C-c]" 'insert-brackets-region)
               (define-key typescript-mode-map "\C-c\"" 'insert-double-quotation-region))))

