;;*** Minor-modes
  (golden-ratio-mode 0)
  (setq golden-ratio-auto-scale t)

  (add-hook 'emacs-lisp-mode-hook 'turn-on-orgstruct)

  (beacon-mode 1)

;;*** Show system name and currently editing file name in the title bar
  (setq frame-title-format '("" "%b − Spacemacs"))

;;*** Default Browser
  (setq browse-url-browser-function 'browse-url-chromium)

;;*** Default frame
  (add-to-list 'default-frame-alist '(fullscreen . maximized)) ; Maximized by default
  (setq frame-resize-pixelwise t)                              ; Fix the gap

;;*** Save Desktop
  (desktop-save-mode 0)

;;*** Delete region
  (delete-selection-mode 1)

;;*** Scroll Bar (yascroll)
  (global-yascroll-bar-mode 1)

;;*** Modeline
;;**** mode line time stamp
  (setq display-time-day-and-date t)
  (setq display-time-24hr-format t)
  (setq display-time-format "%m/%d %T")              ; Month/Day Hour:Minute:Second
  (setq display-time-interval 1)               ; update every second
;;**** No load average
  (setq display-time-default-load-average nil)
;;**** No "Mail"
  (setq display-time-mail-string "")
  (display-time-mode 1)
;;**** all-the-icons theme
  (with-eval-after-load 'spaceline
  (spacemacs|use-package-add-hook spaceline-all-the-icons
    :post-config
    (spaceline-all-the-icons)
    (spaceline-all-the-icons--setup-anzu)            ;; Enable anzu searching
    (spaceline-all-the-icons--setup-package-updates) ;; Enable package update indicator
    (spaceline-all-the-icons--setup-git-ahead)       ;; Enable # of commits ahead of upstream in git
    (spaceline-all-the-icons--setup-paradox)         ;; Enable Paradox mode line
    (spaceline-all-the-icons--setup-neotree)         ;; Enable Neotree mode line
    )
  )

;;*** Open *.foo in foo-mode
  ;;(add-to-list 'auto-mode-alist '("\\.foo\\'" . foo-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
(add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-view-mode))

;;*** Org-super-zaen-view on startup
(with-eval-after-load 'org
(defun org-super-zaen-view(&optional arg)
    (interactive "P")
    (org-agenda arg "z"))

  (defun org-super-zaen-view-startup()
    (interactive)
    (org-super-zaen-view)
    (spacemacs/toggle-maximize-buffer)
    (get-buffer "*Org Agenda*")
    ;(switch-to-buffer "#<buffer *Org Agenda*>")
    ;; (text-scale-increase)

    (split-window-right)
    (other-window 1)
    (find-file "~/GoogleDrive/Org/TODOs.org")
    (split-window-below)
    (other-window 1)
    (find-file "~/GoogleDrive/Org/Projects.org")
    )
;(org-super-zaen-view-startup)

)

    ;; And the following in emacs-custom-settings
    ;; '(initial-buffer-choice (quote org-super-zaen-view-startup))
