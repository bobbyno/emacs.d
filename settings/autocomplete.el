(require 'company)

(setq tab-always-indent 'complete)

(define-key company-mode-map (kbd "C-t") 'company-complete)

(setq company-idle-delay 0.2
      company-selection-wrap-around t
      company-minimum-prefix-length 2
      company-require-match nil
      company-dabbrev-ignore-case nil
      company-dabbrev-downcase nil
      company-show-numbers t)

(add-to-list 'company-backends 'company-shell)

(provide 'autocomplete)
