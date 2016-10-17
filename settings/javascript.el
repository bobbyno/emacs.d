(require 'js2-mode)

(setq-default js2-global-externs '("module"
                                   "require"
                                   "jQuery"
                                   "$"
                                   "setTimeout"
                                   "clearTimeout"
                                   "setInterval"
                                   "clearInterval"
                                   "console"
                                   "JSON"))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(setq-default js2-basic-offset 2)

(provide 'javascript)
