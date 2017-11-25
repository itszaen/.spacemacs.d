;; -*- orgstruct-heading-prefix-regexp: ";;" -*-
;; -*- #+STARTUP: content -*-


;;** Debug Flags
  ;;(setq debug-on-error t)

;;** Keybindings
(if (file-readable-p "~/.spacemacs.d/keybindings-config.el") (load "~/.spacemacs.d/keybindings-config.el"))
;;** Mouse Bindings
(if (file-readable-p "~/.spacemacs.d/mouse-config.el") (load "~/.spacemacs.d/mouse-config.el"))
;;** Faces
(if (file-readable-p "~/.spacemacs.d/face-config.el") (load "~/.spacemacs.d/face-config.el"))
;;** Components
(if (file-readable-p "~/.spacemacs.d/org-config.el") (load "~/.spacemacs.d/org-config.el"))
(if (file-readable-p "~/.spacemacs.d/components-config.el") (load "~/.spacemacs.d/components-config.el"))
;;** Behavior
(if (file-readable-p "~/.spacemacs.d/behavior-config.el") (load "~/.spacemacs.d/behavior-config.el"))
;;** Diminishing
(if (file-readable-p "~/.spacemacs.d/diminish-config.el") (load "~/.spacemacs.d/diminish-config.el"))
;;** Layouts
(if (file-readable-p "~/.spacemacs.d/layout-config.el") (load "~/.spacemacs.d/layout-config.el"))
