(defconst my-spaceline-all-the-icons-packages
  '(all-the-icons
    spaceline
    spaceline-all-the-icons))

(defun my-spaceline-all-the-icons/init-all-the-icons ()
  (use-package all-the-icons
    :config (setq neo-theme 'icons)))

(defun my-spaceline-all-the-icons/init-spaceline ()
  (use-package spaceline))

(defun my-spaceline-all-the-icons/init-spaceline-all-the-icons ()
  (use-package spaceline-all-the-icons
    :after spaceline
    :config (progn
              (spaceline-all-the-icons-theme)
              (setq spaceline-all-the-icons-separator-type 'slant))))
(defconst my-spaceline-all-the-icons-packages
  '(all-the-icons
    spaceline
    spaceline-all-the-icons))

(defun my-spaceline-all-the-icons/init-all-the-icons ()
    (use-package all-the-icons
      :config (setq neo-theme 'icons)))

(defun my-spaceline-all-the-icons/init-spaceline ()
   (use-package spaceline))

(defun my-spaceline-all-the-icons/init-spaceline-all-the-icons ()
    (use-package spaceline-all-the-icons
      :after spaceline
      :config (progn
                (spaceline-all-the-icons-theme)
                (setq spaceline-all-the-icons-separator-type 'none)
                (spaceline-all-the-icons--setup-anzu)            ;; Enable anzu searching
                (spaceline-all-the-icons--setup-package-updates) ;; Enable package update indicator
                (spaceline-all-the-icons--setup-git-ahead)       ;; Enable # of commits ahead of upstream in git
                (spaceline-all-the-icons--setup-paradox)         ;; Enable Paradox mode line
                (spaceline-all-the-icons--setup-neotree)         ;; Enable Neotree mode line
                )))
