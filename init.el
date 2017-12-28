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
