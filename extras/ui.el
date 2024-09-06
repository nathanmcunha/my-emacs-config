  (use-package doom-modeline
    :hook
    (after-init . doom-modeline-mode)
    :custom
    (set-face-attribute 'mode-line nil :font "JetBrainsMonoNL NF" :height 110) 
    (set-face-attribute 'mode-line-inactive nil :font "JetBrainsMonoNL NF Thin" :height 110) 
    :config
    (setq doom-modeline-enable-word-count t))

(setq doom-modeline-project-detection 'file-name-with-project)



(use-package rainbow-mode
  :hook org-mode prog-mode)

  (use-package rainbow-delimiters
    :hook ((prog-mode . rainbow-delimiters-mode)
           (emacs-lisp-mode . rainbow-delimiters-mode)
           (java-mode . rainbow-delimiters-mode)))


(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)

  (doom-themes-visual-bell-config)
  ;; Sets the default theme to load!!! 
  (load-theme 'doom-moonlight t)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(use-package solaire-mode
  :hook (after-init . solaire-global-mode)
  :custom
  (solaire-mode-themes-to-face-swap '(tao-yin tao-yang)))

(use-package zoom
  :hook (after-init . zoom-mode)
  :custom
  (zoom-size '(0.618 . 0.618))
)
(use-package all-the-icons
  :if (display-graphic-p))

(setq
 left-fringe-width 0
 right-fringe-width 0)


(setq display-time-mode t)
(setq display-time-format "%a %d/%m %H:%M")
(setq doom-modeline-time-icon nil)

(setq mode-line-percent-position nil)
(setq doom-modeline-percent-position nil)

(setq mode-line-format '(("%e" mode-line-front-space
  (:propertize
   ("" mode-line-mule-info mode-line-client mode-line-modified mode-line-remote)
   display
   (min-width
    (5.0)))
  mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position evil-mode-line-tag
  (vc-mode vc-mode)
  "  " mode-line-modes mode-line-misc-info mode-line-end-spaces))
)
