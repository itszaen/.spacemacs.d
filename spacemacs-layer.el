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
                         org-default-notes-file (concat "~/Google Drive/Org/Notes.org")
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
     multifiles
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
   )
