(defun dotspacemacs/layers ()
  (setq-default

   dotspacemacs-distribution 'spacemacs

   dotspacemacs-enable-lazy-installation 'unused

   dotspacemacs-ask-for-lazy-installation nil

   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers/")

   dotspacemacs-configuration-layers
   '(
     ruby
     ruby-on-rails
     python
     lua
     windows-scripts
     emacs-lisp
     common-lisp
     scheme
     latex
     markdown
     go
     elixir
     php
     html
     javascript
     shell-scripts
     (c-c++             :variables
                        c-c++-default-mode-for-headers 'c++-mode
                        c-c++-enable-clang-support t)
     rust
     sql
     ipython-notebook
     systemd

     chinese
     ;japanese

     helm
     version-control
     git
     github
     spell-checking
     syntax-checking
     better-defaults
     themes-megapack
     theming
     spacemacs-layouts
     games
     twitter
     slack
     chrome
     finance
     pdf-tools
     deft
     pandoc     ; Universal document converter
     emoji
     ;media
     gnus
     speed-reading
     (colors             :variables
                         color-colorize-identifiers 'all
                         colors-enable-nyan-cat-progress-bar t)
     (auto-completion    :variables
                         auto-completion-enable-sort-by-usage t
                         auto-completion-enable-snippets-in-popup t)
     (ranger             :variables
                         ranger-show-preview t)
     (shell              :variables
                         shell-default-shell 'multi-term
                         shell-default-term-shell "/bin/zsh")
     (wakatime           :variables
                         wakatime-api-key "2db0c3a9-0164-447c-83ed-57bde0304722"
                         wakatime-cli-path "/usr/bin/wakatime")
     (erc                :variables
                         erc-server-list
                         '("irc.freenode.net"
                           :port "6667"
                           :nick "zaen"
                           ))
     (org                :variables
                         org-directory "~/Google Drive/Org"
                         org-imenu-depth 10
                         org-agenda-skip-scheduled-if-done t
                         org-agenda-include-diary t
                         org-agenda-include-deadlines t
                         org-enable-github-support t
                         org-enable-org-journal-support t
                         org-clock-persist 'history
                         org-default-notes-file (concat org-directory "/Notes.org")
                         org-capture-templates
          '(("t" "Task" entry (file+headline "~/Google Drive/Org/TODOs.org" "Tasks")
             "** TODO %?\nSCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"today\"))\n %^{Effort}p \n")
            ("m" "Meeting" entry (file+headline "~/Google Drive/Org/TODOs.org" "Meetings")
             "** MEETING %?\n %u\n %a %?\nSCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"today\"))")
            ("j" "Journal" entry (file+datetree "~/Google Drive/Org/Journal-Desktop.org")
             "** %?\nEntered on %U\n  %i\n  %a")
            ("P" "pull-request-review" entry (file+headline "~/Google Drive/Org/TODOs.org" "Pull Requests")
             "** TODO %a %? :pr:\nDEADLINE: %(org-insert-time-stamp (org-read-date nil t \"+1d\"))")
            ("p" "process-soon" entry (file+headline "~/Google Drive/Org/TODOs.org" "Email")
             "** TODO %a %?\nDEADLINE: %(org-insert-time-stamp (org-read-date nil t \"+2d\"))")
            ("w" "wait-for-reply" entry (file+headline "~/Google Drive/Org/TODOs.org" "Email")
             "** WAIT %u %a %?\n")
            ("r" "redmine-issue" entry (file+headline "~/Google Drive/Org/TODOs.org" "Redmine Issue")
             "** TODO %a %?\nDEADLINE: %(org-insert-time-stamp (org-read-date nil t \"+2d\"))")
            )
                         org-journal-dir "~/Google Drive/Org/Journal-Desktop/"
                         org-journal-file-format "%Y-%n-%d"
                         org-display-custom-times t
                         org-enable-bootstrap-support t
                         org-enable-reveal-js-support t
                         org-want-todo-bindings t
                         org-projectile-file "~/Google Drive/Org/Projects.org"
                         org-todo-keywords '((sequence "TODO(t)" "NEXT(n)" "WAITING(w)" "SOMEDAY(s)" "|" "DONE(d)" "CANCELED(c)"
                                             ))
                         org-agenda-files (quote
                                           ("~/Google Drive/Org/Buy.org"
                                            "~/Google Drive/Org/Routines.org"
                                            "~/Google Drive/Org/TODOs.org"
                                            "~/Google Drive/Org/Projects.org"
                                            "~/Google Drive/Org/Books.org"
                                            "~/Google Drive/Org/Notes.org"

                                                  ))
                         )
     (mu4e               :variables
                         mu4e-installation-path "/usr/share/emacs/site-lisp"
                         mu4e-maildir "/home/zaen/Mail")
    ) ; configuration-layers

   dotspacemacs-additional-packages
   '(
     ac-php
     mozc
     ac-mozc
     ;mozc-popup
     ;mozc-cursor-color
     multi-term
     emms
     gitter
     cnfonts
     yascroll
     org-notebook
     org-pomodoro
     org-projectile-helm
     org-alert
     org-redmine
     ;org-goal
     org-super-agenda
     color-theme-buffer-local
     load-theme-buffer-local
     per-buffer-theme
     deferred
     concurrent
     all-the-icons
     spaceline-all-the-icons
     minibuffer-line
     )

   dotspacemacs-frozen-packages          ; No update
   '(
     )

   dotspacemacs-excluded-packages        ; Excluded from layers
   '(
     vi-tilde-fringe
     )

   dotspacemacs-install-packages 'used-only

  )) ;layers & setq

(defun dotspacemacs/init ()
  (setq-default

   dotspacemacs-elpa-https t

   dotspacemacs-elpa-timeout 10

   dotspacemacs-check-for-update nil

   dotspacemacs-elpa-subdirectory nil

   dotspacemacs-editing-style 'hybrid

   dotspacemacs-verbose-loading t

   dotspacemacs-startup-banner 'official

   ;; `recents' `bookmarks' `projects' `agenda' `todos'
   dotspacemacs-startup-lists '(
                                (agenda . 10)
                                (recents . 5)
                                (projects . 7)
                                (bookmarks . 10)
                                (todos . 20)
                                )

   dotspacemacs-startup-buffer-responsive t

   dotspacemacs-scratch-mode 'text-mode

   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         leuven
                         zenburn
                         )

   dotspacemacs-colorize-cursor-according-to-state t

   dotspacemacs-default-font '("Source Han Code JP"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.2)

   dotspacemacs-leader-key "SPC"

   dotspacemacs-emacs-command-key "SPC"

   dotspacemacs-ex-command-key ":"

   dotspacemacs-emacs-leader-key "M-m"

   dotspacemacs-major-mode-leader-key ","

   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   dotspacemacs-distinguish-gui-tab t

   dotspacemacs-remap-Y-to-y$ t ; yy = copy entire line, Y(y$) = C-k but copy

   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t

   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil

   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil

   dotspacemacs-default-layout-name "Master"

   dotspacemacs-display-default-layout t

   dotspacemacs-auto-resume-layouts nil

   dotspacemacs-large-file-size 1 		             ; in MB

   dotspacemacs-auto-save-file-location 'cache

   dotspacemacs-max-rollback-slots 20

   dotspacemacs-helm-resize nil

   dotspacemacs-helm-no-header nil

   dotspacemacs-helm-position 'bottom

   dotspacemacs-helm-use-fuzzy 'always

   dotspacemacs-enable-paste-transient-state nil   ; C-j, C-k replace the text with older/newer yanks.

   dotspacemacs-which-key-delay 0.4

   dotspacemacs-which-key-position 'bottom

   dotspacemacs-loading-progress-bar t

   dotspacemacs-fullscreen-at-startup nil

   dotspacemacs-fullscreen-use-non-native nil

   dotspacemacs-maximized-at-startup t

   dotspacemacs-active-transparency 90

   dotspacemacs-inactive-transparency 90

   dotspacemacs-show-transient-state-title t

   dotspacemacs-show-transient-state-color-guide t

   dotspacemacs-mode-line-unicode-symbols nil

   dotspacemacs-smooth-scrolling t

   dotspacemacs-line-numbers  '(:relative nil
                                :disabled-for-modes dired-mode
                                                    doc-view-mode
                                                    markdown-mode
                                                    org-mode
                                                    pdf-view-mode
                                                    text-mode
                                                    spacemacs-buffer-mode
                                :size-limit-kb 1000)

   dotspacemacs-folding-method 'evil

   dotspacemacs-smartparens-strict-mode t

   dotspacemacs-smart-closing-parenthesis t

   dotspacemacs-highlight-delimiters 'all

   dotspacemacs-persistent-server t

   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")

   dotspacemacs-default-package-repository nil  ; Not used for now.

   dotspacemacs-whitespace-cleanup 'trailing
   )) ;init & setq

(defun dotspacemacs/user-init ()

  ;;; Components

  ;; Mu4e
  (setq
   mu4e-get-mail-command "offlineimap"
   mu4e-update-interval 300)
  (setq
   mu4e-index-cleanup nil
   mu4e-index-lazy-check t)
  (setq message-send-mail-function 'smtpmail-send-it)  ; tell message-mode how to send mail
  (setq mu4e-sent-messages-behavior 'delete)           ; sent messages
  (setq message-kill-buffer-on-exit t)                 ; kill message buffer when exiting

  ;; Smtpmail
  (require 'smtpmail)
  (setq
   starttls-use-gnutls t
   smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
   smtpmail-auth-credentials
   '(("smtp.gmail.com" 587 "chouzaen2002@gmail.com" nil))
   smtpmail-default-smtp-server "smtp.gmail.com"
   smtpmail-smtp-server "smtp.gmail.com"
   smtpmail-smtp-service 587)

  ;; Dired
  (spacemacs|use-package-add-hook dired
    :pre-config
    (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
    )

  ;; Spaceline
  ; All the icons
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

  ;; No '/' in neotree
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

  ;; Org
  ; because we're using a newer version of org-mode downloaded from elpa,
  ; and org-setup.el contains code that only works with the new version,
  ; we have to load org-setup *after* initializing packages
                                        ; -- mbtuckersimm
  ;; (spacemacs|use-package-add-hook org
  ;;   :pre-init
  ;;   (package-initialize)
  ;;   )

  ) ; user-init


(defun dotspacemacs/user-config ()

  ;* Debug Flags *;
  ;(setq debug-on-error t)


  ;;;; Keybindings

  ;(defvar layout-leader-map (make-sparse-keymap))

  ;; Switch layout bound to SPC-*
  ;; (spacemacs/set-leader-keys (kbd "SPC 0") 'spacemacs/persp-switch-to-0)
  ;; (spacemacs/set-leader-keys (kbd "SPC 1") 'spacemacs/persp-switch-to-1)
  ;; (spacemacs/set-leader-keys (kbd "SPC 2") 'spacemacs/persp-switch-to-2)
  ;; (spacemacs/set-leader-keys (kbd "SPC 3") 'spacemacs/persp-switch-to-3)
  ;; (spacemacs/set-leader-keys (kbd "SPC 4") 'spacemacs/persp-switch-to-4)
  ;; (spacemacs/set-leader-keys (kbd "SPC 5") 'spacemacs/persp-switch-to-5)
  ;; (spacemacs/set-leader-keys (kbd "SPC 6") 'spacemacs/persp-switch-to-6)
  ;; (spacemacs/set-leader-keys (kbd "SPC 7") 'spacemacs/persp-switch-to-7)
  ;; (spacemacs/set-leader-keys (kbd "SPC 8") 'spacemacs/persp-switch-to-8)
  ;; (spacemacs/set-leader-keys (kbd "SPC 9") 'spacemacs/persp-switch-to-9)

  ;; Switch workspace bound to g-*
  (define-key evil-normal-state-map (kbd "g 1") 'eyebrowse-switch-to-window-config-1)
  (define-key evil-normal-state-map (kbd "g 2") 'eyebrowse-switch-to-window-config-2)
  (define-key evil-normal-state-map (kbd "g 3") 'eyebrowse-switch-to-window-config-3)
  (define-key evil-normal-state-map (kbd "g 4") 'eyebrowse-switch-to-window-config-4)
  (define-key evil-normal-state-map (kbd "g 5") 'eyebrowse-switch-to-window-config-5)
  (define-key evil-normal-state-map (kbd "g 6") 'eyebrowse-switch-to-window-config-6)
  (define-key evil-normal-state-map (kbd "g 7") 'eyebrowse-switch-to-window-config-7)
  (define-key evil-normal-state-map (kbd "g 8") 'eyebrowse-switch-to-window-config-8)
  (define-key evil-normal-state-map (kbd "g 9") 'eyebrowse-switch-to-window-config-9)
  ; Magit-mode-map
  ;; (define-key magit-normal-state-map (kbd "g 1") 'eyebrowse-switch-to-window-config-1)
  ;; (define-key magit-normal-state-map (kbd "g 2") 'eyebrowse-switch-to-window-config-2)
  ;; (define-key magit-normal-state-map (kbd "g 3") 'eyebrowse-switch-to-window-config-3)
  ;; (define-key magit-normal-state-map (kbd "g 4") 'eyebrowse-switch-to-window-config-4)
  ;; (define-key magit-normal-state-map (kbd "g 5") 'eyebrowse-switch-to-window-config-5)
  ;; (define-key magit-normal-state-map (kbd "g 6") 'eyebrowse-switch-to-window-config-6)
  ;; (define-key magit-normal-state-map (kbd "g 7") 'eyebrowse-switch-to-window-config-7)
  ;; (define-key magit-normal-state-map (kbd "g 8") 'eyebrowse-switch-to-window-config-8)
  ;; (define-key magit-normal-state-map (kbd "g 9") 'eyebrowse-switch-to-window-config-9)
  ; Neotree
  ;; (with-eval-after-load 'neotree
  ;;   (define-key neotree-mode-map (kbd "g 1") 'eyebrowse-switch-to-window-config-1)
  ;;   (define-key neotree-mode-map (kbd "g 2") 'eyebrowse-switch-to-window-config-2)
  ;;   (define-key neotree-mode-map (kbd "g 3") 'eyebrowse-switch-to-window-config-3)
  ;;   (define-key neotree-mode-map (kbd "g 4") 'eyebrowse-switch-to-window-config-4)
  ;;   (define-key neotree-mode-map (kbd "g 5") 'eyebrowse-switch-to-window-config-5)
  ;;   (define-key neotree-mode-map (kbd "g 6") 'eyebrowse-switch-to-window-config-6)
  ;;   (define-key neotree-mode-map (kbd "g 7") 'eyebrowse-switch-to-window-config-7)
  ;;   (define-key neotree-mode-map (kbd "g 8") 'eyebrowse-switch-to-window-config-8)
  ;;   (define-key neotree-mode-map (kbd "g 9") 'eyebrowse-switch-to-window-config-9)
  ;;   )

  ;; Switch window bound to *
  (define-key evil-normal-state-map "0" 'winum-select-window-0)
  (define-key evil-normal-state-map "1" 'winum-select-window-1)
  (define-key evil-normal-state-map "2" 'winum-select-window-2)
  (define-key evil-normal-state-map "3" 'winum-select-window-3)
  (define-key evil-normal-state-map "4" 'winum-select-window-4)
  (define-key evil-normal-state-map "5" 'winum-select-window-5)
  (define-key evil-normal-state-map "6" 'winum-select-window-6)
  (define-key evil-normal-state-map "7" 'winum-select-window-7)
  (define-key evil-normal-state-map "8" 'winum-select-window-8)
  (define-key evil-normal-state-map "9" 'winum-select-window-9)
  ; Magit-mode-map
  ;; (define-key magit-normal-state-map "1" 'winum-select-window-1)
  ;; (define-key magit-normal-state-map "2" 'winum-select-window-2)
  ;; (define-key magit-normal-state-map "3" 'winum-select-window-3)
  ;; (define-key magit-normal-state-map "4" 'winum-select-window-4)
  ;; (define-key magit-normal-state-map "5" 'winum-select-window-5)
  ;; (define-key magit-normal-state-map "6" 'winum-select-window-6)
  ;; (define-key magit-normal-state-map "7" 'winum-select-window-7)
  ;; (define-key magit-normal-state-map "8" 'winum-select-window-8)
  ;; (define-key magit-normal-state-map "9" 'winum-select-window-9)
  (with-eval-after-load 'neotree
    (define-key neotree-mode-map "1" 'winum-select-window-1)
    (define-key neotree-mode-map "2" 'winum-select-window-2)
    (define-key neotree-mode-map "3" 'winum-select-window-3)
    (define-key neotree-mode-map "4" 'winum-select-window-4)
    (define-key neotree-mode-map "5" 'winum-select-window-5)
    (define-key neotree-mode-map "6" 'winum-select-window-6)
    (define-key neotree-mode-map "7" 'winum-select-window-7)
    (define-key neotree-mode-map "8" 'winum-select-window-8)
    (define-key neotree-mode-map "9" 'winum-select-window-9)
    )
  (with-eval-after-load 'org-agenda
    (define-key org-agenda-mode-map "1" 'winum-select-window-1)
    (define-key org-agenda-mode-map "2" 'winum-select-window-2)
    (define-key org-agenda-mode-map "3" 'winum-select-window-3)
    (define-key org-agenda-mode-map "4" 'winum-select-window-4)
    (define-key org-agenda-mode-map "5" 'winum-select-window-5)
    (define-key org-agenda-mode-map "6" 'winum-select-window-6)
    (define-key org-agenda-mode-map "7" 'winum-select-window-7)
    (define-key org-agenda-mode-map "8" 'winum-select-window-8)
    (define-key org-agenda-mode-map "9" 'winum-select-window-9)
    )

  ;;;; Mouse Bindings

  ;;;; Faces, fonts, fontsets

  ;; Character set & encoding
  (set-language-environment "UTF-8")
  (set-default-coding-systems 'utf-8-unix)

  ;; Face
  (set-face-attribute 'mozc-cand-overlay-even-face 'nil
                      :background "aquamarine" :foreground "black")
  (set-face-attribute 'mozc-cand-overlay-odd-face 'nil
                      :background "aquamarine" :foreground "black")

  ;; Org font
  ;(defun org-face-mode ()
  ;  (interactive)
  ;  (setq buffer-face-mode-face '(:family "Source Han Sans Pro" :height normal :width normal))
  ;  (buffer-face-mode))
  ;(add-hook 'org-mode-hook 'org-face-mode)


  ;; Fonts
  ;; (set-fontset-font t 'japanese-jisx0208 (font-spec
  ;;                                         :name "Source Han Sans JP Light"
  ;;                                         :registry "iso10646-1"
  ;;                                         :script "han"
  ;;                                         :lang "ja"
  ;;                                           )
  ;;                   )
  ;; (set-fontset-font (frame-parameter nil 'font)
  ;;                   'japanese-jisx0208
  ;;                   (cons "Source Han Sans JP Light" "iso10646-1"))
  ;; (set-fontset-font (frame-parameter nil 'font)
  ;;                   'japanese-jisx0212
  ;;                   (cons "Source Han Sans JP Light" "iso10646-1"))
  ;; (set-fontset-font (frame-parameter nil 'font)
  ;;                   'katakana-jisx0201
  ;;                   (cons "Source Han Sans JP Light" "iso10646-1"))



  ;;;; Behavior

  ;; Show system name and currently editing file name in the title bar
  (setq frame-title-format
        (list (format "%s %%S --  %%j " (system-name))
              '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

  ;; Default Browser
  (setq browse-url-browser-function 'browse-url-chromium)

  ;; Default frame
  (add-to-list 'default-frame-alist '(fullscreen . maximized)) ; Maximized by default
  (setq frame-resize-pixelwise t)                              ; Fix the gap

  ;; Golden Ratio
  (golden-ratio-mode 0)
  (setq golden-ratio-auto-scale t)

  ;; Save Desktop
  (desktop-save-mode 0)

  ;; Delete region
  (delete-selection-mode 1)

  ;; Scroll Bar (yascroll)
  (global-yascroll-bar-mode 1)

  ;;; Modeline
  ;; mode line time stamp
  (setq display-time-day-and-date t)
  (setq display-time-24hr-format t)
  (setq display-time-format "%m/%d %T")              ; Month/Day Hour:Minute:Second
  (setq display-time-interval 1)               ; update every second
  ;; No load average
  (setq display-time-default-load-average nil)
  ;; No "Mail"
  (setq display-time-mail-string "")
  (display-time-mode 1)
  ;; all-the-icons theme
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

  ;;; Open *.foo in foo-mode
  ;(add-to-list 'auto-mode-alist '("\\.foo\\'" . foo-mode))
  (add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

  ;;; Org-agenda-list on startup
  (defun org-agenda-startup()
    (interactive)
    (org-agenda-list 1)
    (switch-to-buffer "*Org Agenda*")
    (spacemacs/toggle-maximize-buffer)
    (org-agenda-manipulate-query-add)
    (get-buffer "*Org Agenda*")
   )
    ; And the following in emacs-custom-settings
    ; '(initial-buffer-choice (quote org-agenda-startup))

  ;;;; Diminishing

  ;;; Diminish Errors (buffer-read-only, beginning-of-buffer, end-of-buffer)
  (defun command-error-function-no-buffer-error (data context caller)
    "Ignore the buffer-read-only signal; pass the rest to the default handler."
    (when (not (eq (car data) '(buffer-read-only
                                beginning-of-buffer
                                end-of-buffer
                                )))
      (command-error-default-function data context caller)))
      (setq command-error-function #'command-error-function-no-buffer-error)

  ;;; Diminish spaceline indications
  (spacemacs|diminish holy-mode)
  (spacemacs|diminish hybrid-mode)
  (spacemacs|diminish which-key-mode)
  (spacemacs|diminish auto-completion-mode)
  (spacemacs|diminish evil-mc-mode)
  (spacemacs|diminish helm-gtags-mode)
  (spacemacs|diminish ggtags-mode)
  (spacemacs|diminish wakatime-mode)
  (with-eval-after-load 'emoji-cheat-sheet-plus
    (diminish 'emoji-cheat-sheet-plus-display-mode))
  (with-eval-after-load 'racer
    (diminish 'racer-mode))
  (with-eval-after-load 'command-log-mode
    (diminish 'command-log-mode))

  ;;;; Components

  ;;; Org

  ;; Org
  (with-eval-after-load 'org
    (require 'org-projectile)
    (setq spaceline-org-clock-p t)
    (setq org-time-stamp-custom-formats '("<%Y %n %d %a>" . "<%Y %n %d %a %H:%M>"))
    (setq org-startup-with-inline-images t)
    (setq org-archive-location "~/Google Drive/Org/Archive.org")
    (add-hook 'org-agenda-mode-hook '(lambda() (hl-line-mode 1)))
    (setq org-agenda-time-grid
          '((daily today require-timed)
            "----------------"
            (500 600 700 800 900 1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300)))
    )

  ;; Org-alert
  (setq alert-default-style 'notification)

  ;; Org-super-agenda

  (spacemacs|use-package-add-hook org-agenda
    :post-config
    (setq org-super-agenda-groups
         '((:name "Today"
                  :time-grid t
                  :date today
                  :todo "TODAY"
                  :scheduled today
                  :order 5
                  )
           (:name "Important"
                  :tag "Important"
                  :priority "A"
                  )
           (:name "Work"
                  :tag "Work"
                  :order 11
                  )
           (:name "Assignments"
                  :tag "Assignment"
                  :order 9)
           (:name "Due Today"
                  :deadline today
                  :order 1
                  )
           (:name "Due Soon"
                  :deadline future
                  :order 7
                  )
           (:name "Overdue"
                  :deadline past
                  :order 6
                  )
           (:name "Projects"
                  :tag "Project"
                  :order 12)
           (:name "Research"
                  :tag "Research"
                  :order 13)
           (:name "Routine"
                                        ;:habit
                  :tag "Chore" "Routine" "Daily"
                  :order 10
                  )
           (:order-multi (3 (:name "Done today"
                                   :and (:regexp "State \"DONE\""
                                                 :log t)
                                   )
                            (:name "Clocked today"
                                   :log t
                                   )
                            ))
           (:priority<= "B"
                        :order 1)

           )
         )
    ;(setq org-agenda nil "a")
    (org-super-agenda-mode t)

    )



  ;;; Mozc
  (global-set-key (kbd "C-j") 'mozc-mode)
  (setq mozc-cursor-color-alist '((direct        . "blue")
                                  (hiragana      . "green")
                                  (full-katakana . "goldenrod")
                                  (half-ascii    . "dark orchid")
                                  (full-ascii    . "orchid")
                                  (half-katakana . "dark goldenrod")))
  (setq quail-japanese-use-double-n t)               ; Double n = ん
  (setq mozc-candidate-style 'overlay)

  ;;; Terminal
  (setq explicit-shell-file-name "/bin/zsh")         ; Set default to zsh
  (setq multi-term-program explicit-shell-file-name) ; Multi-term = zsh



  ;;; Deft  Note taking mode
  (setq deft-extensions '("org" "md" "txt"))         ; add more to recognize more file formats.
  (setq deft-directory "~/Google Drive/Org/Notes")


  ;;; Twitter
  (setq twittering-reverse-mode t)                   ; Display tweets from the bottom of the buffer
  (setq twittering-use-icon-storage t)               ; Store the icons at .twittering-mode-icon.gz

  ;;; ERC   Emacs Internet Relay Chat Client

  ;;; Gitter
  (setq gitter-token "b82daddc46dc27391e313e8dc6dcc07d6c079ccf")



  ;;; EMMS  Emacs Multimedia System
  (setq emms-source-file-default-directory "~/Music/")

  ;;; Spaceline
  (setq powerline-default-separator 'bar)

  ;;; Neotree  File tree plugin
  (setq neo-theme 'icons)
  (setq neo-smart-open t)
  (setq projectile-switch-project-action 'neotree-projectile-action)
  (setq neo-vc-integration nil)

  ;;; Dired DIRectory EDitor

  ;;; Ranger




  ;;; EWW   Emacs Web Browser
  (defvar eww-disable-colorize t)
  (defun shr-colorize-region--disable (orig start end fg &optional bg &rest _)
    (unless eww-disable-colorize
      (funcall orig start end fg)))
  (advice-add 'shr-colorize-region :around 'shr-colorize-region--disable)
  (advice-add 'eww-colorize-region :around 'shr-colorize-region--disable)
  (defun eww-disable-color ()
    "No color displayed in eww"
    (interactive)
    (setq-local eww-disable-colorize t)
    (eww-reload))
  (defun eww-enable-color ()
    "Enable color in eww"
    (interactive)
    (setq-local eww-disable-colorize nil)
    (eww-reload))
  (setq browse-url-generic-program (executable-find "chromium"))
  (setq shr-external-browser 'browse-url-generic)


 ;;;; Layouts

  (spacemacs|define-custom-layout "@Chats"
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

  (spacemacs|define-custom-layout "@Notebook"
  :binding "n"
  :body
  (progn
    (find-file "~/Google Drive/Notebooks/notebook.txt")
    (org-mode)
    (neotree-show)
  	)
  )


  ;;;; Theme per layout

  ;;;; Theme per mode

  ;; (with-eval-after-load 'org
  ;; (spacemacs|use-package-add-hook org)
  ;; :post-config
  ;; (lambda()
  ;;   (load-theme-buffer-local 'spacemacs-light (current-buffer))
  ;;   )
  ;; )

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

  ) ; user-config

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(describe-char-unidata-list
   (quote
    (name old-name general-category canonical-combining-class bidi-class decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment uppercase lowercase titlecase)))
 '(evil-want-Y-yank-to-eol t)
 '(initial-buffer-choice (quote org-agenda-startup))
 '(package-selected-packages
   (quote
    (white-sand-theme symon string-inflection ruby-refactor test-simple loc-changes load-relative password-generator org-journal impatient-mode helm-purpose window-purpose imenu-list godoctor go-rename flycheck-bashate exotica-theme editorconfig company-php company-lua cmake-ide levenshtein browse-at-remote yascroll org-super-agenda org-redmine org-alert ac-php pyvenv mu4e-alert hy-mode geiser magit yasnippet company spaceline-all-the-icons github-search company-go markdown-mode magit-popup git-commit alert slime web-mode rebecca-theme realgud pyim pyenv-mode projectile-rails orgit org-brain mmm-mode magithub ghub+ apiwrap ghub live-py-mode evil-org evil-lion esh-help alchemist ac-php-core flycheck multiple-cursors org-projectile-helm org-category-capture minibuffer-line gitter per-buffer-theme load-theme-buffer-local color-theme-buffer-local color-theme emms ox-twbs ox-gfm org-notebook ox-reveal erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks emoji-cheat-sheet-plus company-emoji elfeed-goodies elfeed-org elfeed restclient epc wakatime-mode typit mmt sudoku spray slack emojify circe oauth2 ranger pangu-spacing pandoc-mode pacmacs ox-pandoc insert-shebang fish-mode find-by-pinyin-dired company-shell chinese-pyim chinese-pyim-basedict ace-pinyin pinyinlib 2048-game pdf-tools tablist ledger-mode gmail-message-mode ham-mode html-to-markdown flymd flycheck-ledger edit-server zonokai-theme zenburn-theme zen-and-art-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toml-mode tao-theme tangotango-theme tango-plus-theme tango-2-theme systemd sunny-day-theme sublime-themes subatomic256-theme subatomic-theme sql-indent spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rainbow-mode rainbow-identifiers railscasts-theme racer purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pastels-on-dark-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flycheck-rust seq flatui-theme flatland-theme firebelly-theme farmhouse-theme espresso-theme ein deferred websocket dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode clues-theme cherry-blossom-theme cargo rust-mode busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme autotetris-mode persp-projectile twittering-mode github-browse-file ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
) ;; emacs-custom-settings
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yascroll org-super-agenda org-redmine org-projectile-helm org-category-capture org-alert minibuffer-line ac-php ac-php-core xcscope zonokai-theme zenburn-theme zen-and-art-theme yapfify xterm-color ws-butler winum which-key web-mode web-beautify wakatime-mode volatile-highlights uuidgen use-package unfill underwater-theme ujelly-theme typit twittering-mode twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toml-mode toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit systemd sunny-day-theme sudoku sublime-themes subatomic256-theme subatomic-theme sql-indent spray spaceline-all-the-icons spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slime-company slim-mode slack shell-pop seti-theme scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reverse-theme restart-emacs rbenv ranger rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme racer pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode projectile-rails professional-theme powershell popwin planet-theme pip-requirements phpunit phpcbf php-extras php-auto-yasnippets phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode per-buffer-theme pdf-tools pastels-on-dark-theme paradox pangu-spacing pandoc-mode pacmacs ox-twbs ox-reveal ox-pandoc ox-gfm orgit organic-green-theme org-projectile org-present org-pomodoro org-notebook org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme ob-elixir noctilux-theme niflheim-theme neotree naquadah-theme mwim mustang-theme multi-term mu4e-maildirs-extension mu4e-alert mozc-popup move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minitest minimal-theme material-theme markdown-toc majapahit-theme magit-gitflow magit-gh-pulls madhat2r-theme lush-theme lua-mode lorem-ipsum load-theme-buffer-local livid-mode live-py-mode linum-relative link-hint light-soap-theme less-css-mode ledger-mode json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme info+ indent-guide hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-emms helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio go-guru go-eldoc gnuplot gmail-message-mode gitter github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md geiser gandalf-theme fuzzy flyspell-correct-helm flymd flycheck-rust flycheck-pos-tip flycheck-mix flycheck-ledger flycheck-credo flx-ido flatui-theme flatland-theme fish-mode firebelly-theme find-by-pinyin-dired fill-column-indicator feature-mode farmhouse-theme fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks emoji-cheat-sheet-plus emms-state emmet-mode elisp-slime-nav ein edit-server dumb-jump drupal-mode dracula-theme django-theme disaster diff-hl deft define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme concurrent company-web company-tern company-statistics company-shell company-go company-emoji company-c-headers company-auctex company-anaconda common-lisp-snippets column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-theme-buffer-local color-identifiers-mode coffee-mode cnfonts cmake-mode clues-theme clean-aindent-mode clang-format chruby chinese-pyim cherry-blossom-theme cargo busybee-theme bundler bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes alchemist aggressive-indent afternoon-theme adaptive-wrap ace-window ace-pinyin ace-link ace-jump-helm-line ac-mozc ac-ispell 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
