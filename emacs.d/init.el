(setq load-path
      (cons "~/.emacs.d/elisp" load-path))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(require 'cl)

(defvar installing-package-list
  '(
    init-loader
    auto-save-buffers-enhanced
    ag
    wdired
    wgrep
    wgrep-ag
    guru-mode
    swift-mode
    ruby-mode
    js3-mode
    coffee-mode
    go-mode
    elixir-mode
    yaml-mode
    haml-mode
    sass-mode
    scss-mode
    elm-mode
   ))

(let ((not-installed (loop for x in installing-package-list
                             when (not (package-installed-p x))
                             collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (elm-mode scss-mode sass-mode haml-mode yaml-mode elixir-mode go-mode coffee-mode js3-mode swift-mode guru-mode wgrep-ag wgrep ag auto-save-buffers-enhanced init-loader))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
