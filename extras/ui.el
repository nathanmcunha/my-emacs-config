
  (use-package doom-modeline
    :hook
    (after-init . doom-modeline-mode)
    :custom
    (set-face-attribute 'mode-line nil :font "JetBrainsMonoNL NF" :height 110) 
    (set-face-attribute 'mode-line-inactive nil :font "JetBrainsMonoNL NF Thin" :height 110) 
    :config
    (setq doom-modeline-enable-word-count t))


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

(use-package golden-ratio
  :hook
  (after-init . golden-ratio-mode))
(golden-ratio-mode 1)
