;;*** Diminish Errors (buffer-read-only, beginning-of-buffer, end-of-buffer)
  (defun command-error-function-no-buffer-error (data context caller)
    "Ignore the buffer-read-only signal; pass the rest to the default handler."
    (when (not (eq (car data) '(buffer-read-only
                                beginning-of-buffer
                                end-of-buffer
                                )))
      (command-error-default-function data context caller)))
      (setq command-error-function #'command-error-function-no-buffer-error)

;;*** Diminish spaceline indications
  (spacemacs|diminish holy-mode)
  (spacemacs|diminish hybrid-mode)
  (spacemacs|diminish which-key-mode)
  (spacemacs|diminish auto-completion-mode)
  (spacemacs|diminish evil-mc-mode)
  (spacemacs|diminish helm-gtags-mode)
  (spacemacs|diminish ggtags-mode)
  (spacemacs|diminish wakatime-mode)
  (spacemacs|diminish beacon-mode)
  (with-eval-after-load 'emoji-cheat-sheet-plus
    (diminish 'emoji-cheat-sheet-plus-display-mode))
  (with-eval-after-load 'racer
    (diminish 'racer-mode))
  (with-eval-after-load 'command-log-mode
    (diminish 'command-log-mode))
