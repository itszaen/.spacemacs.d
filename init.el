;; -*- orgstruct-heading-prefix-regexp: ";;" -*-
;; -*- #+STARTUP: content -*-

;;* Layers & Packages Configuration
;;** Layers
(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation nil
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers/")
   dotspacemacs-configuration-layers
   '(fsharp
     my-spaceline-all-the-icons
     ruby
     ruby-on-rails
     python
     lua
     windows-scripts
     emacs-lisp
     common-lisp
     scheme
     (latex             :variables
                        latex-build-command "LaTeX"
                        latex-enable-auto-fill t
                        latex-enable-folding t
                        latex-enable-magic nil)
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

     (chinese           :variables
                        chinese-enable-fcitx t
                        chinese-enable-youdao-dict t)
     ;japanese

     helm
     version-control
     git
     github
     (spell-checking     :variables
                         spell-checking-enable-by-default nil
                         spell-checking-enable-auto-dictionary nil)
     syntax-checking
     better-defaults
     theming
     spacemacs-layouts
     games
     twitter
     slack
     chrome
     finance
     pdf-tools
     deft
     pandoc
     emoji
     ;media
     gnus
     speed-reading
     (colors             :variables
                         color-colorize-identifiers 'all
                         colors-enable-nyan-cat-progress-bar nil)
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
                         org-imenu-depth 10
                         org-enable-github-support t
                         org-enable-org-journal-support t
                         org-default-notes-file (concat org-directory "/Notes.org")
                         org-enable-bootstrap-support t
                         org-enable-reveal-js-support t
                         )
     (mu4e               :variables
                         mu4e-installation-path "/usr/share/emacs/site-lisp"
                         mu4e-maildir "/home/zaen/Mail")
    )
;;** Packages
   dotspacemacs-additional-packages
   '(
     image+
     ac-php
     mozc
     ac-mozc
     multi-term
     emms
     gitter
     cnfonts
     yascroll
     google-maps
     plantuml-mode
     gh

     org-web-tools
     ;org-mouse
     org-notebook
     org-agenda-property
     org-pomodoro
     org-projectile-helm
     org-alert
     org-redmine
     org-super-agenda
     (org-protocol-capture-html :location (recipe
                                           :fetcher github
                                           :repo alphapapa/org-protocol-capture-html))

     (beacon                    :location (recipe
                                           :fetcher github
                                           :repo Malabarba/beacon))
     color-theme-buffer-local
     load-theme-buffer-local
     per-buffer-theme
     deferred
     concurrent
     all-the-icons
     spaceline-all-the-icons
     minibuffer-line

     (dfraw-mode                :location (recipe
                                           :fetcher github
                                           :repo pthariensflame/dfraw-mode))
     )

   dotspacemacs-frozen-packages          ; No update
   '(
     )

   dotspacemacs-excluded-packages        ; Excluded from layers
   '(
     vi-tilde-fringe
     )

   dotspacemacs-install-packages 'used-only
))

;;* Init
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
                                (agenda . 0)
                                (recents . 10)
                                (projects . 10)
                                (bookmarks . 5)
                                (todos . 0)
                                )
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(
                         spacemacs-dark
                         solarized
                         zenburn
                         leuven
                         spacemacs-light
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
   ))

;;* User-init
(defun dotspacemacs/user-init ()
  (if (file-readable-p "~/.spacemacs.d/user-init.el") (load "~/.spacemacs.d/user-init.el"))
  ) ; user-init


;;* User-config
(defun dotspacemacs/user-config ()
  (if (file-readable-p "~/.spacemacs.d/user-config.el") (load "~/.spacemacs.d/user-config.el"))
  )

;;* Emacs-custom-settings
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
 '(evil-want-Y-yank-to-eol t)
 '(initial-buffer-choice (quote org-super-zaen-view-startup))
 '(org-agenda-files
   (quote
    ("~/Google Drive/Org/Running.org" "~/Google Drive/Org/Routines.org" "~/Google Drive/Org/TODOs.org" "~/Google Drive/Org/Projects.org" "~/Google Drive/Org/Notes.org" "~/Google Drive/Org/Timetable.org" "~/Google Drive/Org/Medic.org" "~/Google Drive/Org/Books.org" "~/Google Drive/Org/Emacs.org" "~/Google Drive/Org/Prep.org" "~/Google Drive/Org/Fun.org" "~/Google Drive/Org/Study.org")))
 '(package-selected-packages
   (quote
    (mmt slime circe oauth2 test-simple loc-changes youdao-dictionary names chinese-word-at-point fcitx zonokai-theme zenburn-theme zen-and-art-theme yascroll yapfify xterm-color ws-butler winum white-sand-theme which-key web-mode web-beautify wakatime-mode volatile-highlights uuidgen use-package unfill underwater-theme ujelly-theme typit twittering-mode twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toml-mode toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit systemd symon sunny-day-theme sudoku sublime-themes subatomic256-theme subatomic-theme string-inflection sql-indent spray spaceline-all-the-icons spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slime-company slim-mode slack shell-pop seti-theme scss-mode sass-mode rvm ruby-tools ruby-test-mode ruby-refactor rubocop rspec-mode robe reverse-theme restart-emacs rebecca-theme realgud rbenv ranger rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme racer pyvenv pytest pyim pyenv-mode py-isort purple-haze-theme pug-mode projectile-rails professional-theme powershell popwin plantuml-mode planet-theme pip-requirements phpunit phpcbf php-extras php-auto-yasnippets phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode per-buffer-theme pdf-tools password-generator paradox pangu-spacing pandoc-mode pacmacs ox-twbs ox-reveal ox-pandoc ox-gfm orgit organic-green-theme org-web-tools org-super-agenda org-redmine org-protocol-capture-html org-projectile-helm org-present org-pomodoro org-notebook org-journal org-download org-bullets org-brain org-alert org-agenda-property open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme ob-elixir noctilux-theme neotree naquadah-theme mwim mustang-theme multi-term mu4e-maildirs-extension mu4e-alert move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minitest minimal-theme minibuffer-line material-theme markdown-toc majapahit-theme magit-gitflow magit-gh-pulls madhat2r-theme lush-theme lorem-ipsum load-theme-buffer-local livid-mode live-py-mode linum-relative link-hint light-soap-theme less-css-mode ledger-mode json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme info+ indent-guide impatient-mode hy-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate google-maps golden-ratio godoctor go-rename go-guru go-eldoc gnuplot gmail-message-mode gitter github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md geiser gandalf-theme fuzzy fsharp-mode flyspell-correct-helm flymd flycheck-rust flycheck-pos-tip flycheck-mix flycheck-ledger flycheck-credo flycheck-bashate flx-ido flatui-theme flatland-theme fish-mode find-by-pinyin-dired fill-column-indicator feature-mode farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks emoji-cheat-sheet-plus emms emmet-mode elisp-slime-nav ein editorconfig edit-server dumb-jump drupal-mode dracula-theme django-theme disaster diff-hl dfraw-mode deft define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme concurrent company-web company-tern company-statistics company-shell company-php company-lua company-go company-emoji company-c-headers company-auctex company-anaconda common-lisp-snippets column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-theme-buffer-local color-identifiers-mode coffee-mode cnfonts cmake-mode cmake-ide clues-theme clean-aindent-mode clang-format chruby cherry-blossom-theme cargo busybee-theme bundler bubbleberry-theme browse-at-remote birds-of-paradise-plus-theme beacon badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes alchemist aggressive-indent afternoon-theme adaptive-wrap ace-window ace-pinyin ace-link ace-jump-helm-line ac-php ac-mozc ac-ispell 2048-game)))
 '(paradox-github-token t)
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (youdao-dictionary names chinese-word-at-point yascroll yapfify xterm-color ws-butler winum which-key web-mode web-beautify wakatime-mode volatile-highlights uuidgen use-package unfill typit mmt twittering-mode toml-mode toc-org tagedit systemd sudoku sql-indent spray spaceline-all-the-icons spaceline powerline smeargle slime-company slime slim-mode slack emojify circe oauth2 shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe restart-emacs rbenv ranger rainbow-mode rainbow-identifiers rainbow-delimiters racer pyvenv pytest pyenv-mode py-isort pug-mode projectile-rails rake inflections powershell popwin plantuml-mode pip-requirements phpunit phpcbf php-extras php-auto-yasnippets persp-mode per-buffer-theme pdf-tools tablist pcre2el paradox spinner pangu-spacing pandoc-mode pacmacs ox-twbs ox-reveal ox-pandoc ox-gfm orgit org-web-tools org-super-agenda org-redmine org-protocol-capture-html org-projectile-helm org-projectile org-category-capture org-present org-pomodoro org-notebook org-download org-bullets org-alert org-agenda-property open-junk-file ob-elixir org-plus-contrib neotree mwim multi-term mu4e-maildirs-extension mu4e-alert move-text mmm-mode minitest minibuffer-line markdown-toc magit-gitflow magit-gh-pulls macrostep lua-mode lorem-ipsum load-theme-buffer-local livid-mode live-py-mode linum-relative link-hint less-css-mode ledger-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js-doc insert-shebang info+ indent-guide hydra hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make projectile helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag haml-mode google-translate google-maps golden-ratio go-guru go-eldoc gnuplot gmail-message-mode ham-mode markdown-mode html-to-markdown gitter gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gist gh marshal logito pcache ht gh-md geiser fuzzy fsharp-mode company-quickhelp flyspell-correct-helm flyspell-correct flymd flycheck-rust flycheck-pos-tip pos-tip flycheck-mix flycheck-ledger flycheck-credo flycheck flx-ido flx fish-mode find-by-pinyin-dired fill-column-indicator feature-mode fcitx fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit magit-popup git-commit with-editor evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks emoji-cheat-sheet-plus emms emmet-mode elisp-slime-nav ein skewer-mode request-deferred websocket request js2-mode simple-httpd edit-server dumb-jump drupal-mode disaster diminish diff-hl dfraw-mode deft define-word cython-mode concurrent deferred company-web web-completion-data company-tern dash-functional tern company-statistics company-shell company-go go-mode company-emoji company-c-headers company-auctex company-anaconda common-lisp-snippets column-enforce-mode color-theme-buffer-local color-theme color-identifiers-mode coffee-mode cnfonts cmake-mode clean-aindent-mode clang-format chruby cargo rust-mode bundler inf-ruby bind-map bind-key beacon auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile packed auctex-latexmk auctex anaconda-mode pythonic all-the-icons memoize font-lock+ alert log4e gntp alchemist company elixir-mode pkg-info epl aggressive-indent adaptive-wrap ace-window ace-pinyin pinyinlib ace-link ace-jump-helm-line helm avy helm-core async ac-php yasnippet ac-php-core f xcscope php-mode dash s ac-mozc mozc ac-ispell auto-complete popup 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
