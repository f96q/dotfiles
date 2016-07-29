(require 'go-mode)

(setq auto-mode-alist
      (append '(("\\.go$" . go-mode)) auto-mode-alist))

(add-hook 'go-mode-hook
          '(lambda()
             (progn
               (define-key go-mode-map "\C-c\C-p" 'ff-find-other-file)
               (define-key go-mode-map "\C-c\C-n" 'ff-find-other-file)
               (define-key go-mode-map "{" 'insert-braces)
               (define-key go-mode-map "(" 'insert-parens)
               (define-key go-mode-map "\"" 'insert-double-quotation)
               (define-key go-mode-map "[" 'insert-brackets)
               (define-key go-mode-map "\C-c}" 'insert-braces-region)
               (define-key go-mode-map "\C-c)" 'insert-parens-region)
               (define-key go-mode-map "\C-c]" 'insert-brackets-region)
               (define-key go-mode-map "\C-c\"" 'insert-double-quotation-region))))

