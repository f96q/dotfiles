(setq default-process-coding-system 'utf-8-unix)
(require 'ag)
(setq ag-highlight-search t)
(setq ag-reuse-buffers t)

(global-set-key (kbd "C-c s") 'ag)

