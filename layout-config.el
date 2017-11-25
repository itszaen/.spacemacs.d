(spacemacs|define-custom-layout "Chats"
  :binding "C"
  :body
  (progn
    ;; hook to add all ERC buffers to the layout
    (defun spacemacs-layouts/add-erc-buffer-to-persp ()
      (persp-add-buffer (current-buffer)
                        (persp-get-by-name
                         erc-spacemacs-layout-name)))
    (add-hook 'erc-mode-hook #'spacemacs-layouts/add-erc-buffer-to-persp)
    ;; Start ERC
    (call-interactively 'erc)
    )
  )

(spacemacs|define-custom-layout "TeX"
  :binding "t"
  :body
  (progn
    (find-file "~/Workspace/TeX")
    (neotree-dir "~/Workspace/TeX")))

(spacemacs|define-custom-layout "Notebook"
  :binding "n"
  :body
  (progn
    (find-file "~/Google Drive/Notebooks/notebook.txt")
    (org-mode)
    (neotree-show)
  	)
  )

(spacemacs|define-custom-layout "Monitor"
  :binding "M"
  :body
  (progn
    (defun multi-term-journalctl ()
      (interactive)
      (let((multi-term-program "/bin/journalctl"))
        (multi-term))
      )
    (defun multi-term-htop ()
      (interactive)
      (let ((multi-term-program "/bin/htop"))
        (multi-term))
      )
    (defun multi-term-netstat ()
      (interactive)
      (let((multi-term-program "netstat -a | more"))
        (multi-term))
      )
    (multi-term-htop)
    (split-window-below)
    (other-window 1)
    (split-window-right)
    (multi-term-netstat)
    (other-window 1)
    (multi-term-journalctl)
    ))

(spacemacs|define-custom-layout "Terminal"
  :binding "T"
  :body
  (progn
    (multi-term)
    (split-window-below)
    (other-window 1)
    (multi-term)
    (other-window 1)
    (split-window-right)
    (multi-term)
    (other-window 1)
    ))


;;*** Auto layout
  ;; (persp-def-auto-persp "init.el"
  ;;                       :mode   emacs-lisp-mode
  ;;                       :switch 'window
  ;;                       :hooks '(after-switch-to-buffer-functions)
  ;;                       :dyn-env '(after-switch-to-buffer-functions ;; prevent recursion
  ;;                                  persp-add-buffer-on-after-change-major-mode)
  ;;  )
;;** Theme per layout

;;** Theme per mode
  ;; (spacemacs|use-package-add-hook org)
  ;; :post-config
  ;;   (load-theme-buffer-local 'spacemacs-light (current-buffer))

   ;; (add-hook 'org-mode-hook
   ;;      (lambda ()
   ;;         (load-theme-buffer-local 'spacemacs-light (current-buffer))
   ;;       )
   ;;  )


   ;; ;; Do not activate with the following modes
   ;; (setq per-buffer-theme/ignored-buffernames-regex
   ;;       '("\\*mini" "\\*Mini" "\\*helm" "\\*Helm"
   ;;         "\\*anything" "\\*Anything"
   ;;         "One-Key" "guide-key"))
   ;; ;; Default theme
   ;; (setq per-buffer-theme/default-theme 'spacemacs-dark)
   ;; ;; Settings
   ;; (setq per-buffer-theme/themes-alist
   ;;       '(((:theme . notheme)             ; Disable Theme
   ;;          (:buffernames . ("*eww" "*w3m" "*mu4e"))
   ;;          (:modes . (eww-mode w3m-mode cfw:calendar-mode mu4e-main-mode mu4e-headers-mode mu4e-view-mode mu4e-compose-mode mu4e-about-mode mu4e-update-mode)))
   ;;         ((:theme . tango-dark)
   ;;          (:buffernames . ("*Messages*"))
   ;;          (:modes . (nil)))
   ;;         ((:theme . spacemacs-light)
   ;;          (:buffernames . (nil))
   ;;          (:modes . (org-mode)))
   ;;         ))
