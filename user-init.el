;; -*- orgstruct-heading-prefix-regexp: ";;" -*-
;; -*- #+STARTUP: content -*-


;;** Components

;;*** Mu4e
  (setq
   mu4e-get-mail-command "offlineimap"
   mu4e-update-interval 300)
  (setq
   mu4e-index-cleanup nil
   mu4e-index-lazy-check t)
  (setq message-send-mail-function 'smtpmail-send-it)  ; tell message-mode how to send mail
  (setq mu4e-sent-messages-behavior 'delete)           ; sent messages
  (setq message-kill-buffer-on-exit t)                 ; kill message buffer when exiting

;;*** Smtpmail
  (require 'smtpmail)
  (setq
   starttls-use-gnutls t
   smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
   smtpmail-auth-credentials
   '(("smtp.gmail.com" 587 "chouzaen2002@gmail.com" nil))
   smtpmail-default-smtp-server "smtp.gmail.com"
   smtpmail-smtp-server "smtp.gmail.com"
   smtpmail-smtp-service 587)

;;*** Dired
  (spacemacs|use-package-add-hook dired
    :pre-config
    (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
    )

;;*** Spaceline

  ;; All the icons
  ;; (with-eval-after-load 'spaceline
  ;;   (spacemacs|use-package-add-hook spaceline-all-the-icons
  ;;     :post-init
  ;;   (spaceline-all-the-icons-theme)
  ;;   (spaceline-toggle-all-the-icons-bookmark-on)
  ;;   (spaceline-all-the-icons--setup-anzu)            ;; Enable anzu searching
  ;;   (spaceline-all-the-icons--setup-package-updates) ;; Enable package update indicator
  ;;   (spaceline-all-the-icons--setup-git-ahead)       ;; Enable # of commits ahead of upstream in git
  ;;   (spaceline-all-the-icons--setup-paradox)         ;; Enable Paradox mode line
  ;;   (spaceline-all-the-icons--setup-neotree)         ;; Enable Neotree mode line
  ;;   )
  ;; )

;;*** Neotree
  ;No '/' in neotree
  (spacemacs|use-package-add-hook neotree
    :post-config
    (defun neo-buffer--insert-dir-entry (node depth expanded)
    (let ((node-short-name (neo-path--file-short-name node)))
      (insert-char ?\s (* (- depth 1) 2)) ; indent
      (when (memq 'char neo-vc-integration)
        (insert-char ?\s 2))
      (neo-buffer--insert-fold-symbol
       (if expanded 'open 'close) node)
      (insert-button node-short-name ;; (concat node-short-name "/")
                     'follow-link t
                     'face neo-dir-link-face
                     'neo-full-path node
                     'keymap neotree-dir-button-keymap
                     'help-echo (neo-buffer--help-echo-message node-short-name))
      (neo-buffer--node-list-set nil node)
      (neo-buffer--newline-and-begin)))
    )

;;*** Org
  ; because we're using a newer version of org-mode downloaded from elpa,
  ; and org-setup.el contains code that only works with the new version,
  ; we have to load org-setup *after* initializing packages
                                        ; -- mbtuckersimm
  ;; (spacemacs|use-package-add-hook org
  ;;   :pre-init
  ;;   (package-initialize)

  ;;   )
