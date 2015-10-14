(add-hook 'emacs-lisp-mode-hook
  '(lambda()
     (progn
       (define-key emacs-lisp-mode-map "{" 'insert-braces)
       (define-key emacs-lisp-mode-map "(" 'insert-parens)
       (define-key emacs-lisp-mode-map "\"" 'insert-double-quotation)
       (define-key emacs-lisp-mode-map "[" 'insert-brackets)
       (define-key emacs-lisp-mode-map "\C-c}" 'insert-braces-region)
       (define-key emacs-lisp-mode-map "\C-c)" 'insert-parens-region)
       (define-key emacs-lisp-mode-map "\C-c]" 'insert-brackets-region)
       (define-key emacs-lisp-mode-map "\C-c\"" 'insert-double-quotation-region))))
