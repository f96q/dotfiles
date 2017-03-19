(setq load-path
      (cons "~/.emacs.d/elisp" load-path))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
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
