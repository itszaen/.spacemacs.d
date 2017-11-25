;;*** Monospacify Chinese font
;(spacemacs//set-monospaced-font "")
;;*** Character set & encoding
  (set-language-environment "UTF-8")
  (set-default-coding-systems 'utf-8-unix)

;;*** Face
  (set-face-attribute 'mozc-cand-overlay-even-face 'nil
                      :background "white" :foreground "black")
  (set-face-attribute 'mozc-cand-overlay-odd-face 'nil
                      :background "white" :foreground "black")

;;*** Org font
  ;;(defun org-face-mode ()
  ;;  (interactive)
  ;;  (setq buffer-face-mode-face '(:family "Source Han Sans Pro" :height normal :width normal))
  ;;  (buffer-face-mode))
  ;;(add-hook 'org-mode-hook 'org-face-mode)


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
