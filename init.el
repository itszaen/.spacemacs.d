(defun dotspacemacs/layers ()
  (if (file-readable-p "~/.spacemacs.d/spacemacs-layer.el") (load "~/.spacemacs.d/spacemacs-layer.el"))
  )

(defun dotspacemacs/init ()
  (if (file-readable-p "~/.spacemacs.d/spacemacs-default.el") (load "~/.spacemacs.d/spacemacs-default.el"))
)

(defun dotspacemacs/user-init ()
  (if (file-readable-p "~/.spacemacs.d/user-init.el") (load "~/.spacemacs.d/user-init.el"))
  ) ; user-init


(defun dotspacemacs/user-config ()
  (if (file-readable-p "~/.spacemacs.d/user-config.el") (load "~/.spacemacs.d/user-config.el"))
  )

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
 '(package-selected-packages
   (quote
    (zenburn-theme symon string-inflection solarized-theme ruby-refactor youdao-dictionary names chinese-word-at-point yascroll yapfify xterm-color ws-butler winum which-key web-mode web-beautify wakatime-mode volatile-highlights uuidgen use-package unfill typit mmt twittering-mode toml-mode toc-org tagedit systemd sudoku sql-indent spray spaceline-all-the-icons spaceline powerline smeargle slime-company slime slim-mode slack emojify circe oauth2 shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe restart-emacs rbenv ranger rainbow-mode rainbow-identifiers rainbow-delimiters racer pyvenv pytest pyenv-mode py-isort pug-mode projectile-rails rake inflections powershell popwin plantuml-mode pip-requirements phpunit phpcbf php-extras php-auto-yasnippets persp-mode per-buffer-theme pdf-tools tablist pcre2el paradox spinner pangu-spacing pandoc-mode pacmacs ox-twbs ox-reveal ox-pandoc ox-gfm orgit org-web-tools org-super-agenda org-redmine org-protocol-capture-html org-projectile-helm org-projectile org-category-capture org-present org-pomodoro org-notebook org-download org-bullets org-alert org-agenda-property open-junk-file ob-elixir org-plus-contrib neotree mwim multi-term mu4e-maildirs-extension mu4e-alert move-text mmm-mode minitest minibuffer-line markdown-toc magit-gitflow magit-gh-pulls macrostep lua-mode lorem-ipsum load-theme-buffer-local livid-mode live-py-mode linum-relative link-hint less-css-mode ledger-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js-doc insert-shebang info+ indent-guide hydra hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make projectile helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag haml-mode google-translate google-maps golden-ratio go-guru go-eldoc gnuplot gmail-message-mode ham-mode markdown-mode html-to-markdown gitter gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gist gh marshal logito pcache ht gh-md geiser fuzzy fsharp-mode company-quickhelp flyspell-correct-helm flyspell-correct flymd flycheck-rust flycheck-pos-tip pos-tip flycheck-mix flycheck-ledger flycheck-credo flycheck flx-ido flx fish-mode find-by-pinyin-dired fill-column-indicator feature-mode fcitx fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit magit-popup git-commit with-editor evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks emoji-cheat-sheet-plus emms emmet-mode elisp-slime-nav ein skewer-mode request-deferred websocket request js2-mode simple-httpd edit-server dumb-jump drupal-mode disaster diminish diff-hl dfraw-mode deft define-word cython-mode concurrent deferred company-web web-completion-data company-tern dash-functional tern company-statistics company-shell company-go go-mode company-emoji company-c-headers company-auctex company-anaconda common-lisp-snippets column-enforce-mode color-theme-buffer-local color-theme color-identifiers-mode coffee-mode cnfonts cmake-mode clean-aindent-mode clang-format chruby cargo rust-mode bundler inf-ruby bind-map bind-key beacon auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile packed auctex-latexmk auctex anaconda-mode pythonic all-the-icons memoize font-lock+ alert log4e gntp alchemist company elixir-mode pkg-info epl aggressive-indent adaptive-wrap ace-window ace-pinyin pinyinlib ace-link ace-jump-helm-line helm avy helm-core async ac-php yasnippet ac-php-core f xcscope php-mode dash s ac-mozc mozc ac-ispell auto-complete popup 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
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
