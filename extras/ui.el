
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
