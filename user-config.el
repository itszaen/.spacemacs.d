;;** Debug Flags
  ;;(setq debug-on-error t)


(if (file-readable-p "~/.spacemacs.d/config-keybindings.el") (load "~/.spacemacs.d/config-keybindings.el"))

(if (file-readable-p "~/.spacemacs.d/config-mouse.el")       (load "~/.spacemacs.d/config-mouse.el"))

(if (file-readable-p "~/.spacemacs.d/config-face.el")        (load "~/.spacemacs.d/config-face.el"))

(if (file-readable-p "~/.spacemacs.d/config-org.el")         (load "~/.spacemacs.d/config-org.el"))

(if (file-readable-p "~/.spacemacs.d/config-components.el")  (load "~/.spacemacs.d/config-components.el"))

(if (file-readable-p "~/.spacemacs.d/config-behavior.el")    (load "~/.spacemacs.d/config-behavior.el"))

(if (file-readable-p "~/.spacemacs.d/config-diminish.el")    (load "~/.spacemacs.d/config-diminish.el"))

(if (file-readable-p "~/.spacemacs.d/config-layout.el")      (load "~/.spacemacs.d/config-layout.el"))
