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
                (setq spaceline-all-the-icons-separator-type 'slant))))
