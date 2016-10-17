(setq settings-path "~/.emacs.d/settings")

(add-to-list 'load-path settings-path)

(require 'packages)
(require 'general)
(require 'clojure)
(require 'javascript)
(require 'neotree)
(require 'persian)
(when (executable-find "ipython")
  (require 'python-settings)
  (require 'python-flake8))
(require 'r)
(require 'ruby)
(require 'tmux)
(require 'window)

(let ((user-settings (expand-file-name (concat settings-path "/" (getenv "USER") ".el"))))
  (when (file-exists-p user-settings)
      (load user-settings)))

(put 'erase-buffer 'disabled nil)
(put 'downcase-region 'disabled nil)
