;;*** TeX
(setq tex-default-mode 'latex-mode)
(setq TeX-view-program-list
      '(("Okular" "okular %o")
        ("Chrome" "chromium %o")
        ("Emacs" TeX-pdf-tools-sync-view)))
(setq TeX-view-program-selection
      '((output-pdf "Emacs")))

(setq tex-start-commands "\\nonstopmode\\input")
(setq tex-run-command "ptex2pdf -u -e -ot '-synctex=1 -interaction=nonstopmode'")
(setq latex-run-command "ptex2pdf -u -e -ot '-synctex=1 -interaction=nonstopmode'")
(setq tex-bibtex-command "latexmk -e '$latex=q/uplatex %O -synctex=1 -interaction=nonstopmode %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
(setq tex-print-file-extension ".pdf")
(setq TeX-PDF-from-DVI "dvipdfmx")

(setq TeX-source-correlate-mode t)
(setq TeX-source-correlate-start-server t)
(setq TeX-source-correlate-method 'synctex)
;;*** Helm
(with-eval-after-load 'helm
(define-key helm-buffer-map (kbd "C-c j") 'mozc-mode)
)
;;*** Terminal
  (setq explicit-shell-file-name "/bin/zsh")         ; Set default to zsh
  (setq multi-term-program explicit-shell-file-name) ; Multi-term = zsh

;;*** Smooth-scrolling
  (setq mouse-wheel-scroll-amount '(3 ((shift) . 1))) ;; two lines at a time
  (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
  (setq mouse-wheel-follow-mouse 't)

;;*** Gitter
  (setq gitter-token "b82daddc46dc27391e313e8dc6dcc07d6c079ccf")

;;*** Git
  (setq magit-repository-directories '(
                                       "~/Projects/"
                                       ))

;;*** Spaceline
  (setq powerline-default-separator 'bar)

;;*** Neotree  File tree plugin
  (setq neo-theme 'icons)
  (setq neo-smart-open t)
  (setq projectile-switch-project-action 'neotree-projectile-action)
  (setq neo-vc-integration nil)
