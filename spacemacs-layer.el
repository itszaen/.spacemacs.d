 (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation nil
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers/")
   dotspacemacs-configuration-layers
   '(
     my-spaceline-all-the-icons
     python
     lua
     windows-scripts
     emacs-lisp
     common-lisp
     (latex             :variables
                        latex-build-command "LaTeX"
                        latex-enable-auto-fill t
                        latex-enable-folding t
                        latex-enable-magic nil)
     markdown
     go
     html
     javascript
     shell-scripts
     (c-c++             :variables
                        c-c++-default-mode-for-headers 'c++-mode
                        c-c++-enable-clang-support t)
     rust
     sql
     systemd
     helm
     version-control
     git
     github
     syntax-checking
     spacemacs-layouts
     pandoc
     emoji
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
    )
;;** Packages
   dotspacemacs-additional-packages
   '(
     vue-mode
     multifiles
     yascroll
     (beacon                    :location (recipe
                                           :fetcher github
                                           :repo Malabarba/beacon))
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
   )
