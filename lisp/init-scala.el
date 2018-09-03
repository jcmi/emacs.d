(require 'scala-mode)

(after-load 'scala-mode
  (define-key scala-mode-map (kbd "M-n") nil)
  (define-key scala-mode-map (kbd "M-b") nil))

(provide 'init-scala)
