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
     media
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
                         shell-default-shell 'multi-term)
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
                         org-enable-github-support t
                         org-enable-org-journal-support t
                         org-journal-dir "~/Google Drive/Org/Journal-Desktop/"
                         org-journal-file-format "%Y-%n-%d"
                         org-display-custom-times t
                         org-enable-bootstrap-support t
                         org-enable-reveal-js-support t
                         org-want-todo-bindings t
                         org-projectile-file "TODOs.org")
     (mu4e               :variables
                         mu4e-installation-path "/usr/share/emacs/site-lisp"
                         mu4e-maildir "/home/zaen/Mail")
    ) ; configuration-layers

   dotspacemacs-additional-packages
   '(
     mozc
     ac-mozc     ; Auto-completion
     mozc-popup
     mozc-cursor-color
     multi-term
     gitter
     cnfonts
     org-notebook
     org-pomodoro
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
                               :powerline-scale 1.1)

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

   dotspacemacs-auto-resume-layouts t

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
  ; Display current time in powerline
  (spacemacs|use-package-add-hook spaceline
    :post-config
    (spaceline-define-segment date-time-segment
      (shell-command-to-string "echo -n $(date +%k:%M--%m-%d)")
      )
  	)
  ; All the icons
  (with-eval-after-load 'spaceline
    (spacemacs|use-package-add-hook spaceline-all-the-icons
      :post-init
    (spaceline-all-the-icons-theme)
    (spaceline-toggle-all-the-icons-bookmark-on)
    (spaceline-all-the-icons--setup-anzu)            ;; Enable anzu searching
    (spaceline-all-the-icons--setup-package-updates) ;; Enable package update indicator
    (spaceline-all-the-icons--setup-git-ahead)       ;; Enable # of commits ahead of upstream in git
    (spaceline-all-the-icons--setup-paradox)         ;; Enable Paradox mode line
    (spaceline-all-the-icons--setup-neotree)         ;; Enable Neotree mode line
    )
  )

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
  ) ; user-init


(defun dotspacemacs/user-config ()
  ;;; Keybindings

  ;(defvar layout-leader-map (make-sparse-keymap))

  ;; Switch layout bound to SPC-*
  (spacemacs/set-leader-keys (kbd "SPC 1") 'spacemacs/persp-switch-to-1)
  (spacemacs/set-leader-keys (kbd "SPC 2") 'spacemacs/persp-switch-to-2)
  (spacemacs/set-leader-keys (kbd "SPC 3") 'spacemacs/persp-switch-to-3)
  (spacemacs/set-leader-keys (kbd "SPC 4") 'spacemacs/persp-switch-to-4)
  (spacemacs/set-leader-keys (kbd "SPC 5") 'spacemacs/persp-switch-to-5)
  (spacemacs/set-leader-keys (kbd "SPC 6") 'spacemacs/persp-switch-to-6)
  (spacemacs/set-leader-keys (kbd "SPC 7") 'spacemacs/persp-switch-to-7)
  (spacemacs/set-leader-keys (kbd "SPC 8") 'spacemacs/persp-switch-to-8)
  (spacemacs/set-leader-keys (kbd "SPC 9") 'spacemacs/persp-switch-to-9)

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



  ;;; Faces, fonts, fontsets

  ;; Character set & encoding
  (set-language-environment "UTF-8")
  (set-default-coding-systems 'utf-8-unix)

  ;; Face
  (set-face-attribute 'mozc-cand-overlay-even-face 'nil
                      :background "aquamarine" :foreground "black")
  (set-face-attribute 'mozc-cand-overlay-odd-face 'nil
                      :background "aquamarine" :foreground "black")

  ;; Org font
  (defun org-face-mode ()
    (interactive)
    (setq buffer-face-mode-face '(:family "Source Han Sans Pro" :height normal :width normal))
    (buffer-face-mode))
  (add-hook 'org-mode-hook 'org-face-mode)


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



  ;;; Behavior

  ;; Default Browser
  (setq browse-url-browser-function 'browse-url-chromium)

  ;; Default frame
  (add-to-list 'default-frame-alist '(fullscreen . maximized)) ; Maximized by default
  (setq frame-resize-pixelwise t)                              ; Fix the gap

  ;; Golden Ratio
  (golden-ratio-mode 1)
  (setq golden-ratio-auto-scale t)

  ;; Save Desktop
  (desktop-save-mode 0)

  ;; Display current time in minibuffer (will not work)

  ;(setq minibuffer-line-format '((:eval
  ;                                (let ((time-string (format-time-string "%l:%M %b %d %a")))
  ;                                  (concat
  ;                                   (make-string (- (frame-text-cols)
  ;                                                   (string-width time-string)) ? )
  ;                                   time-string)))))
  ;(minibuffer-line-mode)


  ;; Open *.foo in foo-mode
  ;(add-to-list 'auto-mode-alist '("\\.foo\\'" . foo-mode))
  (add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))

  ;;; Diminishing

  ;; Diminish Buffer-read-only Error
  (defun command-error-function-no-bro (data context caller)
    "Ignore the buffer-read-only signal; pass the rest to the default handler."
    (when (not (eq (car data) 'buffer-read-only))
      (command-error-default-function data context caller)))
      (setq command-error-function #'command-error-function-no-bro)

  ;; Diminish spaceline indications
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

  ;;; Components
  (global-set-key (kbd "C-j") 'mozc-mode)
  (setq mozc-cursor-color-alist '((direct        . "blue")
                                  (hiragana      . "green")
                                  (full-katakana . "goldenrod")
                                  (half-ascii    . "dark orchid")
                                  (full-ascii    . "orchid")
                                  (half-katakana . "dark goldenrod")))
  (setq quail-japanese-use-double-n t)               ; Double n
  (setq mozc-candidate-style 'overlay)

  ;; Terminal
  (setq explicit-shell-file-name "/bin/zsh")         ; Set default to zsh
  (setq multi-term-program explicit-shell-file-name) ; Multi-term = zsh


  ;; Org
  (with-eval-after-load 'org
    (setq spaceline-org-clock-p t)
    (setq org-time-stamp-custom-formats '("<%Y %n %d %a>" . "<%Y %n %d %a %H:%M>"))
  )
  ;; Deft  Note taking mode
  (setq deft-extensions '("org" "md" "txt"))         ; add more to recognize more file formats.
  (setq deft-directory "~/Google Drive/Org/Notes")


  ;; Twitter
  (setq twittering-reverse-mode t)                   ; Display tweets from the bottom of the buffer
  (setq twittering-use-icon-storage t)               ; Store the icons at .twittering-mode-icon.gz

  ;; ERC   Emacs Internet Relay Chat Client

  ;; Gitter
  (setq gitter-token "b82daddc46dc27391e313e8dc6dcc07d6c079ccf")



  ;; EMMS  Emacs Multimedia System
  (setq emms-source-file-default-directory "~/Music/")

  ;; Spaceline
  (setq powerline-default-separator 'bar)

  ;; Neotree  File tree plugin
  (setq neo-theme 'icons)
  (setq neo-smart-open t)
  (setq projectile-switch-project-action 'neotree-projectile-action)
  (setq neo-vc-integration nil)

  ;; Dired DIRectory EDitor

  ;; Ranger




  ;; EWW   Emacs Web Browser
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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (per-buffer-theme load-theme-buffer-local color-theme-buffer-local color-theme emms ox-twbs ox-gfm org-notebook ox-reveal erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks emoji-cheat-sheet-plus company-emoji elfeed-goodies elfeed-org elfeed restclient epc wakatime-mode typit mmt sudoku spray slack emojify circe oauth2 ranger pangu-spacing pandoc-mode pacmacs ox-pandoc insert-shebang fish-mode find-by-pinyin-dired company-shell chinese-pyim chinese-pyim-basedict ace-pinyin pinyinlib 2048-game pdf-tools tablist ledger-mode gmail-message-mode ham-mode html-to-markdown flymd flycheck-ledger edit-server zonokai-theme zenburn-theme zen-and-art-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toml-mode tao-theme tangotango-theme tango-plus-theme tango-2-theme systemd sunny-day-theme sublime-themes subatomic256-theme subatomic-theme sql-indent spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rainbow-mode rainbow-identifiers railscasts-theme racer purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pastels-on-dark-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flycheck-rust seq flatui-theme flatland-theme firebelly-theme farmhouse-theme espresso-theme ein deferred websocket dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode clues-theme cherry-blossom-theme cargo rust-mode busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme autotetris-mode persp-projectile twittering-mode github-browse-file ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(wakatime-python-bin nil)
 ) ; custom-set-variables
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#eee" :background "#011827")) (((class color) (min-colors 256)) (:foreground "#eee" :background "black"))))
 ) ; custom-set-faces

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
 '(package-selected-packages
   (quote
    (minibuffer-line gitter per-buffer-theme load-theme-buffer-local color-theme-buffer-local color-theme emms ox-twbs ox-gfm org-notebook ox-reveal erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks emoji-cheat-sheet-plus company-emoji elfeed-goodies elfeed-org elfeed restclient epc wakatime-mode typit mmt sudoku spray slack emojify circe oauth2 ranger pangu-spacing pandoc-mode pacmacs ox-pandoc insert-shebang fish-mode find-by-pinyin-dired company-shell chinese-pyim chinese-pyim-basedict ace-pinyin pinyinlib 2048-game pdf-tools tablist ledger-mode gmail-message-mode ham-mode html-to-markdown flymd flycheck-ledger edit-server zonokai-theme zenburn-theme zen-and-art-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toml-mode tao-theme tangotango-theme tango-plus-theme tango-2-theme systemd sunny-day-theme sublime-themes subatomic256-theme subatomic-theme sql-indent spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rainbow-mode rainbow-identifiers railscasts-theme racer purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pastels-on-dark-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flycheck-rust seq flatui-theme flatland-theme firebelly-theme farmhouse-theme espresso-theme ein deferred websocket dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode clues-theme cherry-blossom-theme cargo rust-mode busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme autotetris-mode persp-projectile twittering-mode github-browse-file ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#eee" :background "#011827")) (((class color) (min-colors 256)) (:foreground "#eee" :background "black")))))
) ; emacs-custom-settings
