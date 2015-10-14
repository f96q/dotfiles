(setq c-auto-newline t)
(setq c-basic-offset 4)
(setq c-set-style "bsd")

(setq auto-mode-alist
      (append '(("\\.h$" . c++-mode)) auto-mode-alist))

(setq auto-mode-alist
      (append '(("\\.c$" . c-mode)) auto-mode-alist))

(setq auto-mode-alist
      (append '(("\\.cpp$" . c++-mode)) auto-mode-alist))

(add-hook 'c-mode-hook
          '(lambda()
             (progn
               (define-key c-mode-map "\C-c\C-p" 'ff-find-other-file)
               (define-key c-mode-map "\C-c\C-n" 'ff-find-other-file)
               (define-key c-mode-map "{" 'insert-braces)
               (define-key c-mode-map "(" 'insert-parens)
               (define-key c-mode-map "\"" 'insert-double-quotation)
               (define-key c-mode-map "[" 'insert-brackets)
               (define-key c-mode-map "\C-c}" 'insert-braces-region)
               (define-key c-mode-map "\C-c)" 'insert-parens-region)
               (define-key c-mode-map "\C-c]" 'insert-brackets-region)
               (define-key c-mode-map "\C-c\"" 'insert-double-quotation-region))))

(add-hook 'c++-mode-hook
          '(lambda()
             (progn
               (define-key c++-mode-map "\C-c\C-p" 'ff-find-other-file)
               (define-key c++-mode-map "\C-c\C-n" 'ff-find-other-file)
               (define-key c++-mode-map "{" 'insert-braces)
               (define-key c++-mode-map "(" 'insert-parens)
               (define-key c++-mode-map "\"" 'insert-double-quotation)
               (define-key c++-mode-map "[" 'insert-brackets)
               (define-key c++-mode-map "\C-c}" 'insert-braces-region)
               (define-key c++-mode-map "\C-c)" 'insert-parens-region)
               (define-key c++-mode-map "\C-c]" 'insert-brackets-region)
               (define-key c++-mode-map "\C-c\"" 'insert-double-quotation-region))))

