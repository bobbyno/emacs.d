(elpy-enable)
(elpy-use-ipython)
(setq elpy-rpc-backend "jedi")

(autoload 'python-pylint "python-pylint")
(autoload 'pylint "python-pylint")

(setq elpy-test-runner 'elpy-test-pytest-runner)

;; disable highlighting indentation and showing virtualenv in the mode line
(setq elpy-modules
      '(elpy-module-eldoc
        elpy-module-flymake
        elpy-module-yasnippet
        elpy-module-sane-defaults))

(add-hook 'elpy-mode-hook
 (lambda ()
   (define-key elpy-mode-map (kbd "C-c C-v") 'python-flake8)
   (define-key elpy-mode-map (kbd "M-,") 'pop-tag-mark)
   (define-key elpy-mode-map (kbd "C-t") 'elpy-company-backend)))

;; pretty lambda's
(add-hook 'python-mode-hook 'esk-pretty-lambdas)
(add-hook 'inferior-python-mode-hook 'esk-pretty-lambdas)

;; autocomplete
(add-hook 'python-mode-hook 'company-mode)

;; allow IPython to work in emacs inferior mode
;; http://ipython.readthedocs.io/en/stable/whatsnew/version5.html#id1
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "--simple-prompt -i")

(add-hook 'inferior-python-mode-hook
          (lambda ()
            (company-mode)
            (elpy-mode)))

(provide 'python-settings)
