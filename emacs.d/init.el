(setq gc-cons-threshold 5242880)
(column-number-mode t)
(setq make-backup-files nil)
(blink-cursor-mode nil)
(menu-bar-mode 0)
(setq inhibit-startup-message t)
(setq fill-collum 80)
(setq visible-bell t)
(transient-mark-mode t)
(show-paren-mode t)
(setq show-paren-style 'mixed)
(setq truncate-partial-width-windows nil)

(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8-unix)

(setq load-path
      (cons "~/.emacs.d/elisp" load-path))
(setq load-path
      (cons "~/.emacs.d/init" load-path))

(load "show-tab-zenkaku-space")
(load "brackets")

(load "init-color-theme")
(load "init-auto-complete")
(load "init-drill-instructor")
(load "init-auto-save-buffers")
(load "init-dabbrev")
(load "init-wdired")
(load "init-ag")
(load "init-wgrep")

(load "init-c++-mode")
(load "init-ruby-mode")
(load "init-javascript-mode")
(load "init-coffee-mode")
(load "init-swift-mode")
(load "init-haml-mode")
(load "init-yaml-mode")
(load "init-scss-mode")
(load "init-sass-mode")
(load "init-emacs-lisp-mode")
(load "init-lisp-interaction-mode")



