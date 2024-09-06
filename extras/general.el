(use-package general
  :config
  (general-evil-setup)
  ;; set up 'SPC' as the global leader key
 (general-create-definer nathan/leader-keys
    :states '(normal insert visual emacs)
    :keymaps 'override
    :prefix "SPC" ;; set leader
    :global-prefix "M-SPC") ;; access leader in insert mode

  (nathan/leader-keys
    "TAB TAB" '(comment-line :wk "Comment lines")
    ) 

  
  ;; Buffer/bookmarks
  (nathan/leader-keys
    "b" '(:ignore t :wk "Buffers/Bookmarks")
    "b b" '(consult-buffer :wk "Switch to buffer")
    "b i" '(ibuffer :wk "Ibuffer")
    "b k" '(kill-current-buffer :wk "Kill current buffer")
    "b d" '(bury-buffer :wk "Bury Buffer")
    "b s" '(basic-save-buffer :wk "Save buffer")
    "b n" '(next-buffer :wk "Next buffer")
    "b p" '(previous-buffer :wk "Previous buffer")
    "q q" '(save-buffers-kill-terminal :wk "Quit emacs"))

  ;; Files
  (nathan/leader-keys
    "f" '(:ignore t :wk "Files")
    "." '(find-file :wk "Find file")
    "f f" '(find-file :wk "Find file")
    "f p" '(nathan/emacs-personal-files :wk "Open personal config files")
    "f c" '(nathan/open-emacs-config :wk "Open emacs config.org"))

  (nathan/leader-keys
    "p" '(:ignore t :wk "Project")
    "p f" '(project-find-file :wk "Project")
    )

  ;; Helpers
  (nathan/leader-keys
    "h" '(:ignore t :wk "Helpers")
    "h r r" '(nathan/reaload-settings :wk "Reload emacs settings")))

(nathan/leader-keys
  "w" '(:ignore t :wk "Windows")
  "w l" '( evil-window-right :wk "window right")
  "w h" '( evil-window-left :wk "window left")
  "w k" '( evil-window-up :wk "window up")
  "w j" '( evil-window-down :wk "window down")
  "w o" '( split-window-horizontally :wk "window horizontaly")
  "w v" '( split-window-vertically :wk "window horizontaly")
  )

(defun nathan/reaload-settings ()
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(global-set-key (kbd "C-=") 'text-scale-increase) 
(global-set-key (kbd "C--") 'text-scale-decrease)
;;(global-set-key (kbd "SPC SPC") 'project-find-file)

  (defun nathan/emacs-personal-files ()
    (interactive)
    (let ((default-directory "~/.emacs.d"))
      (call-interactively 'find-file)))



