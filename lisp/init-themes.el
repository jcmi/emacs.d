;;(require-package 'doom-themes)

;; If you don't customize it, this is the theme you get.
;;(setq-default custom-enabled-themes '(doom-vibrant))

;; Ensure that themes will be applied even if they have not been customized
;;(defun reapply-themes ()
;;  "Forcibly load the themes listed in `custom-enabled-themes'."
;;  (dolist (theme custom-enabled-themes)
;;    (unless (custom-theme-p theme)
;;      (load-theme theme)))
;;  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

;;(add-hook 'after-init-hook 'reapply-themes)


;;------------------------------------------------------------------------------
;; Toggle between light and dark
;;------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (defun light ()                                             ;;
;;   "Activate a light color theme."                           ;;
;;   (interactive)                                             ;;
;;   (setq custom-enabled-themes '(sanityinc-tomorrow-day))    ;;
;;   (reapply-themes))                                         ;;
;;                                                             ;;
;; (defun dark ()                                              ;;
;;   "Activate a dark color theme."                            ;;
;;   (interactive)                                             ;;
;;   (setq custom-enabled-themes '(sanityinc-tomorrow-bright)) ;;
;;   (reapply-themes))                                         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;(when (maybe-require-package 'dimmer)
;;  (setq-default dimmer-fraction 0.15)
;;  (add-hook 'after-init-hook 'dimmer-mode))
(load-file "~/.emacs.d/elpa-25.1/moe-theme-20180314.2108/moe-dark-theme.el")

(provide 'init-themes)
