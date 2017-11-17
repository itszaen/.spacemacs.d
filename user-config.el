;; -*- orgstruct-heading-prefix-regexp: ";;" -*-
;; -*- #+STARTUP: content -*-


;;** Debug Flags
  ;;(setq debug-on-error t)

;;** Keybindings
  ;;(defvar layout-leader-map (make-sparse-keymap))
;;*** Rebind magit 0~4 (in order to make select window work)
  (with-eval-after-load 'magit
    (evil-define-key evil-magit-state magit-mode-map (kbd "C-0") 'magit-diff-default-context)
    (evil-define-key evil-magit-state magit-mode-map (kbd "C-1") 'magit-section-show-level-1)
    (evil-define-key evil-magit-state magit-mode-map (kbd "C-2") 'magit-section-show-level-2)
    (evil-define-key evil-magit-state magit-mode-map (kbd "C-3") 'magit-section-show-level-3)
    (evil-define-key evil-magit-state magit-mode-map (kbd "C-4") 'magit-section-show-level-4)
    )

;;*** Switch layout bound to SPC-*
  ;; (spacemacs/set-leader-keys (kbd "SPC 0") 'spacemacs/persp-switch-to-0)
  ;; (spacemacs/set-leader-keys (kbd "SPC 1") 'spacemacs/persp-switch-to-1)
  ;; (spacemacs/set-leader-keys (kbd "SPC 2") 'spacemacs/persp-switch-to-2)
  ;; (spacemacs/set-leader-keys (kbd "SPC 3") 'spacemacs/persp-switch-to-3)
  ;; (spacemacs/set-leader-keys (kbd "SPC 4") 'spacemacs/persp-switch-to-4)
  ;; (spacemacs/set-leader-keys (kbd "SPC 5") 'spacemacs/persp-switch-to-5)
  ;; (spacemacs/set-leader-keys (kbd "SPC 6") 'spacemacs/persp-switch-to-6)
  ;; (spacemacs/set-leader-keys (kbd "SPC 7") 'spacemacs/persp-switch-to-7)
  ;; (spacemacs/set-leader-keys (kbd "SPC 8") 'spacemacs/persp-switch-to-8)
  ;; (spacemacs/set-leader-keys (kbd "SPC 9") 'spacemacs/persp-switch-to-9)

;;*** Switch workspace bound to M-*
  (define-key evil-normal-state-map (kbd "M-1") 'eyebrowse-switch-to-window-config-1)
  (define-key evil-normal-state-map (kbd "M-2") 'eyebrowse-switch-to-window-config-2)
  (define-key evil-normal-state-map (kbd "M-3") 'eyebrowse-switch-to-window-config-3)
  (define-key evil-normal-state-map (kbd "M-4") 'eyebrowse-switch-to-window-config-4)
  (define-key evil-normal-state-map (kbd "M-5") 'eyebrowse-switch-to-window-config-5)
  (define-key evil-normal-state-map (kbd "M-6") 'eyebrowse-switch-to-window-config-6)
  (define-key evil-normal-state-map (kbd "M-7") 'eyebrowse-switch-to-window-config-7)
  (define-key evil-normal-state-map (kbd "M-8") 'eyebrowse-switch-to-window-config-8)
  (define-key evil-normal-state-map (kbd "M-9") 'eyebrowse-switch-to-window-config-9)
;;**** Magit-mode-map
  (with-eval-after-load 'magit
    (evil-define-key evil-magit-state magit-mode-map (kbd "M-1") 'eyebrowse-switch-to-window-config-1)
    (evil-define-key evil-magit-state magit-mode-map (kbd "M-2") 'eyebrowse-switch-to-window-config-2)
    (evil-define-key evil-magit-state magit-mode-map (kbd "M-3") 'eyebrowse-switch-to-window-config-3)
    (evil-define-key evil-magit-state magit-mode-map (kbd "M-4") 'eyebrowse-switch-to-window-config-4)
    (evil-define-key evil-magit-state magit-mode-map (kbd "M-5") 'eyebrowse-switch-to-window-config-5)
    (evil-define-key evil-magit-state magit-mode-map (kbd "M-6") 'eyebrowse-switch-to-window-config-6)
    (evil-define-key evil-magit-state magit-mode-map (kbd "M-7") 'eyebrowse-switch-to-window-config-7)
    (evil-define-key evil-magit-state magit-mode-map (kbd "M-8") 'eyebrowse-switch-to-window-config-8)
    (evil-define-key evil-magit-state magit-mode-map (kbd "M-9") 'eyebrowse-switch-to-window-config-9)
    )
;;**** Neotree
  (with-eval-after-load 'neotree
    (define-key neotree-mode-map (kbd "M-1") 'eyebrowse-switch-to-window-config-1)
    (define-key neotree-mode-map (kbd "M-2") 'eyebrowse-switch-to-window-config-2)
    (define-key neotree-mode-map (kbd "M-3") 'eyebrowse-switch-to-window-config-3)
    (define-key neotree-mode-map (kbd "M-4") 'eyebrowse-switch-to-window-config-4)
    (define-key neotree-mode-map (kbd "M-5") 'eyebrowse-switch-to-window-config-5)
    (define-key neotree-mode-map (kbd "M-6") 'eyebrowse-switch-to-window-config-6)
    (define-key neotree-mode-map (kbd "M-7") 'eyebrowse-switch-to-window-config-7)
    (define-key neotree-mode-map (kbd "M-8") 'eyebrowse-switch-to-window-config-8)
    (define-key neotree-mode-map (kbd "M-9") 'eyebrowse-switch-to-window-config-9)
    )
;;**** pdf-view-mode-map
(with-eval-after-load 'pdf-view
  (define-key pdf-view-mode-map (kbd "M-1") 'eyebrowse-switch-to-window-config-1)
  (define-key pdf-view-mode-map (kbd "M-2") 'eyebrowse-switch-to-window-config-2)
  (define-key pdf-view-mode-map (kbd "M-3") 'eyebrowse-switch-to-window-config-3)
  (define-key pdf-view-mode-map (kbd "M-4") 'eyebrowse-switch-to-window-config-4)
  (define-key pdf-view-mode-map (kbd "M-5") 'eyebrowse-switch-to-window-config-5)
  (define-key pdf-view-mode-map (kbd "M-6") 'eyebrowse-switch-to-window-config-6)
  (define-key pdf-view-mode-map (kbd "M-7") 'eyebrowse-switch-to-window-config-7)
  (define-key pdf-view-mode-map (kbd "M-8") 'eyebrowse-switch-to-window-config-8)
  (define-key pdf-view-mode-map (kbd "M-9") 'eyebrowse-switch-to-window-config-9)
  )
;;**** Image-mode-map
(with-eval-after-load 'image-mode
  (define-key image-mode-map (kbd "M-1") 'eyebrowse-switch-to-window-config-1)
  (define-key image-mode-map (kbd "M-2") 'eyebrowse-switch-to-window-config-2)
  (define-key image-mode-map (kbd "M-3") 'eyebrowse-switch-to-window-config-3)
  (define-key image-mode-map (kbd "M-4") 'eyebrowse-switch-to-window-config-4)
  (define-key image-mode-map (kbd "M-5") 'eyebrowse-switch-to-window-config-5)
  (define-key image-mode-map (kbd "M-6") 'eyebrowse-switch-to-window-config-6)
  (define-key image-mode-map (kbd "M-7") 'eyebrowse-switch-to-window-config-7)
  (define-key image-mode-map (kbd "M-8") 'eyebrowse-switch-to-window-config-8)
  (define-key image-mode-map (kbd "M-9") 'eyebrowse-switch-to-window-config-9)
  )

;;*** Switch window bound to *
  (define-key evil-normal-state-map "0" 'winum-select-window-0)
  (define-key evil-normal-state-map "1" 'winum-select-window-1)
  (define-key evil-normal-state-map "2" 'winum-select-window-2)
  (define-key evil-normal-state-map "3" 'winum-select-window-3)
  (define-key evil-normal-state-map "4" 'winum-select-window-4)
  (define-key evil-normal-state-map "5" 'winum-select-window-5)
  (define-key evil-normal-state-map "6" 'winum-select-window-6)
  (define-key evil-normal-state-map "7" 'winum-select-window-7)
  (define-key evil-normal-state-map "8" 'winum-select-window-8)
  (define-key evil-normal-state-map "9" 'winum-select-window-9)
;;**** Magit-mode-map
  (with-eval-after-load 'magit
    (evil-define-key evil-magit-state magit-mode-map "0" 'winum-select-window-0)
    (evil-define-key evil-magit-state magit-mode-map "1" 'winum-select-window-1)
    (evil-define-key evil-magit-state magit-mode-map "2" 'winum-select-window-2)
    (evil-define-key evil-magit-state magit-mode-map "3" 'winum-select-window-3)
    (evil-define-key evil-magit-state magit-mode-map "4" 'winum-select-window-4)
    (evil-define-key evil-magit-state magit-mode-map "5" 'winum-select-window-5)
    (evil-define-key evil-magit-state magit-mode-map "6" 'winum-select-window-6)
    (evil-define-key evil-magit-state magit-mode-map "7" 'winum-select-window-7)
    (evil-define-key evil-magit-state magit-mode-map "8" 'winum-select-window-8)
    (evil-define-key evil-magit-state magit-mode-map "9" 'winum-select-window-9)
    )
;;**** Neotree-mode-map
  (with-eval-after-load 'neotree
    (define-key neotree-mode-map "1" 'winum-select-window-1)
    (define-key neotree-mode-map "2" 'winum-select-window-2)
    (define-key neotree-mode-map "3" 'winum-select-window-3)
    (define-key neotree-mode-map "4" 'winum-select-window-4)
    (define-key neotree-mode-map "5" 'winum-select-window-5)
    (define-key neotree-mode-map "6" 'winum-select-window-6)
    (define-key neotree-mode-map "7" 'winum-select-window-7)
    (define-key neotree-mode-map "8" 'winum-select-window-8)
    (define-key neotree-mode-map "9" 'winum-select-window-9)
    )
;;**** Org-agenda-map
  (with-eval-after-load 'org-agenda
    (define-key org-agenda-mode-map "1" 'winum-select-window-1)
    (define-key org-agenda-mode-map "2" 'winum-select-window-2)
    (define-key org-agenda-mode-map "3" 'winum-select-window-3)
    (define-key org-agenda-mode-map "4" 'winum-select-window-4)
    (define-key org-agenda-mode-map "5" 'winum-select-window-5)
    (define-key org-agenda-mode-map "6" 'winum-select-window-6)
    (define-key org-agenda-mode-map "7" 'winum-select-window-7)
    (define-key org-agenda-mode-map "8" 'winum-select-window-8)
    (define-key org-agenda-mode-map "9" 'winum-select-window-9)
    )
;;**** Dired-mode-map
  (with-eval-after-load 'dired
    (define-key dired-mode-map "1" 'winum-select-window-1)
    (define-key dired-mode-map "2" 'winum-select-window-2)
    (define-key dired-mode-map "3" 'winum-select-window-3)
    (define-key dired-mode-map "4" 'winum-select-window-4)
    (define-key dired-mode-map "5" 'winum-select-window-5)
    (define-key dired-mode-map "6" 'winum-select-window-6)
    (define-key dired-mode-map "7" 'winum-select-window-7)
    (define-key dired-mode-map "8" 'winum-select-window-8)
    (define-key dired-mode-map "9" 'winum-select-window-9)
    )
;;**** pdf-view-mode-map
  (with-eval-after-load 'pdf-view
  (define-key pdf-view-mode-map "1" 'winum-select-window-1)
  (define-key pdf-view-mode-map "2" 'winum-select-window-2)
  (define-key pdf-view-mode-map "3" 'winum-select-window-3)
  (define-key pdf-view-mode-map "4" 'winum-select-window-4)
  (define-key pdf-view-mode-map "5" 'winum-select-window-5)
  (define-key pdf-view-mode-map "6" 'winum-select-window-6)
  (define-key pdf-view-mode-map "7" 'winum-select-window-7)
  (define-key pdf-view-mode-map "8" 'winum-select-window-8)
  (define-key pdf-view-mode-map "9" 'winum-select-window-9)
  )
;;**** image-mode-map
(with-eval-after-load 'image-mode
  (define-key image-mode-map "1" 'winum-select-window-1)
  (define-key image-mode-map "2" 'winum-select-window-2)
  (define-key image-mode-map "3" 'winum-select-window-3)
  (define-key image-mode-map "4" 'winum-select-window-4)
  (define-key image-mode-map "5" 'winum-select-window-5)
  (define-key image-mode-map "6" 'winum-select-window-6)
  (define-key image-mode-map "7" 'winum-select-window-7)
  (define-key image-mode-map "8" 'winum-select-window-8)
  (define-key image-mode-map "9" 'winum-select-window-9)
  )
;;*** Vi/Vim 'o' -> C-return
(defun newline-without-break-of-line ()
"move to end of the line and insert newline with index"
(interactive)
(let ((oldpos (point)))
(end-of-line)
(newline-and-indent)))
(global-set-key (kbd "<C-return>") 'newline-without-break-of-line)
;;*** Move text line up/down
(define-key input-decode-map "\e\eOA" [(meta up)])
(define-key input-decode-map "\e\eOB" [(meta down)])
(global-set-key [(meta up)] 'move-text-line-up)
(global-set-key [(meta down)] 'move-text-line-down)


;;*** Multiply current line below
(defun Multiply-line-below ()
  (interactive)
  (beginning-of-line)
  (set-mark-command)
  (next-line)
  (kill-ring-save)
  (yank))
(global-set-key (kbd "C-c C-m") 'Multiply-line-below)
;;*** Evil-escape key sequence
(setq-default evil-escape-key-sequence "jk")
;;** Custom Bindings
(spacemacs/declare-prefix "o" "Custom")
;;*** Dotfiles
(spacemacs/declare-prefix "o e" "Spacemacs")
(defun zaen/dotfile()
  (interactive)
  (find-file "~/Projects/dotspacemacs/init.el"))
(defun zaen/user-initial()
  (interactive)
  (find-file "~/Projects/dotspacemacs/user-config.el"))
(defun zaen/user-config()
  (interactive)
  (find-file "~/Projects/dotspacemacs/user-config.el"))
(spacemacs/set-leader-keys (kbd "SPC o e d") 'zaen/dotfile)
(spacemacs/set-leader-keys (kbd "SPC o e i") 'zaen/user-initial)
(spacemacs/set-leader-keys (kbd "SPC o e u") 'zaen/user-config)
;;*** Switch to Org-agenda-zaen-view buffer (and open one if there's not already)
(defun Org-Agenda-buffer()
  (interactive)
  (if (get-buffer "*Org Agenda*")
      (switch-to-buffer "*Org Agenda*")
    (org-super-zaen-view))
  )
(spacemacs/set-leader-keys (kbd "SPC o a") 'org-super-zaen-view)

;;*** Org-agenda with todo files
(defun Org-Agenda-Setup()
  (interactive)
  (Org-Agenda-buffer)
  (spacemacs/toggle-maximize-buffer)
  (split-window-right)
  (other-window 1)
  (find-file "~/Google Drive/Org/TODOs.org")
  (split-window-below)
  (other-window 1)
  (find-file "~/Google Drive/Org/Projects.org")
  )
(spacemacs/set-leader-keys (kbd "SPC o A") 'Org-Agenda-Setup)
;;*** Org-TODO files
(spacemacs/declare-prefix "o t" "Org-files")
(defun TODOs ()
  (interactive)
  (find-file "~/Google Drive/Org/TODOs.org")
  )
(defun Routines ()
  (interactive)
  (find-file "~/Google Drive/Org/Routines.org"))
(defun Timetable ()
  (interactive)
  (find-file "~/Google Drive/Org/Timetable.org"))
(defun Archive ()
  (interactive)
  (find-file "~/Google Drive/Org/Archive.org"))
(defun Projects ()
  (interactive)
  (find-file "~/Google Drive/Org/Projects.org"))
(defun Study ()
  (interactive)
  (find-file "~/Google Drive/Org/Study.org"))
(defun Fun ()
  (interacrive)
  (find-file "~/Google Drive/Org/Fun.org"))
(defun Prep ()
  (interactive)
  (find-file "~/Google Drive/Org/Prep.org"))
(defun Emacs ()
  (interactive)
  (find-file "~/Google Drive/Org/Emacs.org"))
(defun Books ()
  (interactive)
  (find-file "~/Google Drive/Org/Books.org"))
(defun Medic ()
  (interactive)
  (find-file "~/Google Drive/Org/Medic.org"))
(defun Holiday ()
  (interactive)
  (find-file "~/Google Drive/Org/Holiday.org"))
(defun Exam ()
  (interactive)
  (find-file "~/Google Drive/Org/Examination.org"))

(spacemacs/set-leader-keys (kbd "SPC o t t") 'TODOs)
(spacemacs/set-leader-keys (kbd "SPC o t r") 'Routines)
(spacemacs/set-leader-keys (kbd "SPC o t T") 'Timetable)
(spacemacs/set-leader-keys (kbd "SPC o t e") 'Emacs)
(spacemacs/set-leader-keys (kbd "SPC o t E") 'Exam)
(spacemacs/set-leader-keys (kbd "SPC o t a") 'Archive)
(spacemacs/set-leader-keys (kbd "SPC o t p") 'Projects)
(spacemacs/set-leader-keys (kbd "SPC o t s") 'Study)
(spacemacs/set-leader-keys (kbd "SPC o t f") 'Fun)
(spacemacs/set-leader-keys (kbd "SPC o t P") 'Prep)
(spacemacs/set-leader-keys (kbd "SPC o t b") 'Books)
(spacemacs/set-leader-keys (kbd "SPC o t m") 'Medic)
(spacemacs/set-leader-keys (kbd "SPC o t h") 'Holiday)
;(spacemacs/set-leader-keys (kbd "SPC o t m") 'Medic)
;(spacemacs/set-leader-keys (kbd "SPC o t m") 'Medic)
;(spacemacs/set-leader-keys (kbd "SPC o t m") 'Medic)
;(spacemacs/set-leader-keys (kbd "SPC o t m") 'Medic)
;(spacemacs/set-leader-keys (kbd "SPC o t m") 'Medic)
;(spacemacs/set-leader-keys (kbd "SPC o t m") 'Medic)
;(spacemacs/set-leader-keys (kbd "SPC o t m") 'Medic)

;;*** Notebooks
  (spacemacs/declare-prefix "o n" "Notebook")
  (spacemacs/declare-prefix "o n h" "History")
  (spacemacs/declare-prefix "o n s" "Science")
  (spacemacs/declare-prefix "o n j" "Japanese")
  (defun Chemistry ()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Chemistry")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Chemistry")
    )
  (defun Biology ()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Biology")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Biology")
    )
  (defun Arts ()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Arts")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Arts")
    )
  (defun Technology()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Technology")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Technology")
    )
  (defun Mathematics()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Mathematics")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Mathematics")
    )
  (defun World-History()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Geography_and_History/World_History")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Geography_and_History/World_History")
    )
  (defun Earth-Science()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Earth_Science")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Earth_Science")
    )
  (defun Piano()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Arts/Music/Piano")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Arts/Music/Piano")
    )
  (defun English()
    (interactive)
    (find-file "~/Google Drive/Notebooks/English")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/English")
    )
  (defun Deutsch()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Deutsch")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Deutsch"))
  (defun Civics()
    (interactive)
    (find-file "~/Google Drive/Notebook/Civics/4年公民.txt")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebook/Civics/")
    )
  (defun Physics()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Physics")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Physics")
    )
  (defun Japan()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Geography_and_History/Asia/Japan/History")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Geography_and_History/Asia/Japan/History")
         )
  (defun Lyrics()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Lyrics/Ariana Grande/Love me Harder.org")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Lyrics/")
    )
  (defun Parenting()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Parenting")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Parenting")
    )
  (defun Sport()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Sport")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Sport"))
  (defun Military()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Military")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Military"))
  (defun Military()
    (interactive)
    (find-file "~/Google Drive/Notebooks/Religion")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/Religion"))
  (defun 現代文()
    (interactive)
    (find-file "~/Google Drive/Notebooks/現代文")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/現代文"))
  (defun 古文()
    (interactive)
    (find-file "~/Google Drive/Notebooks/古文")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/古文"))
  (defun 漢文()
    (interactive)
    (find-file "~/Google Drive/Notebooks/古文/漢文")
    (spacemacs/toggle-maximize-buffer)
    (neotree-dir "~/Google Drive/Notebooks/古文/漢文"))


  (spacemacs/set-leader-keys (kbd "SPC o n a") 'Arts)
  (spacemacs/set-leader-keys (kbd "SPC o n c") 'Civics)
  (spacemacs/set-leader-keys (kbd "SPC o n l") 'Lyrics)
  (spacemacs/set-leader-keys (kbd "SPC o n m") 'Mathematics)
  (spacemacs/set-leader-keys (kbd "SPC o n j g") '現代文)
  (spacemacs/set-leader-keys (kbd "SPC o n j c") '古文)
  (spacemacs/set-leader-keys (kbd "SPC o n j k") '漢文)
  (spacemacs/set-leader-keys (kbd "SPC o n e") 'English)
  (spacemacs/set-leader-keys (kbd "SPC o n d") 'Deutsch)
  (spacemacs/set-leader-keys (kbd "SPC o n s b") 'Biology)
  (spacemacs/set-leader-keys (kbd "SPC o n s c") 'Chemistry)
  (spacemacs/set-leader-keys (kbd "SPC o n s e") 'Earth-Science)
  (spacemacs/set-leader-keys (kbd "SPC o n s p") 'Physics)
  (spacemacs/set-leader-keys (kbd "SPC o n M") 'Military)
  (spacemacs/set-leader-keys (kbd "SPC o n p") 'Parenting)
  (spacemacs/set-leader-keys (kbd "SPC o n r") 'Religion)
  (spacemacs/set-leader-keys (kbd "SPC o n t") 'Technology)
  (spacemacs/set-leader-keys (kbd "SPC o n h j") 'Japan)
  (spacemacs/set-leader-keys (kbd "SPC o n h w") 'World-History)
  (spacemacs/set-leader-keys (kbd "SPC o n S") 'Sport)

;;**** Helm-find-file Notebook
  (defun Search-Notebooks ()
    (interactive)
    (helm-find-files-1 "~/Google Drive/Notebooks/"))
  (spacemacs/set-leader-keys (kbd "SPC o n /") 'Search-Notebooks)

;;*** Switch to project layout
(defun Init ()
    (interactive)
  (spacemacs/helm-persp-switch-project "~/Projects/dotspacemacs"))
(spacemacs/set-leader-keys (kbd "SPC o i") 'Init)
;;*** Shutdown & reboot
(defun Safe-Shutdown()
  (interactive)
  (shell-command "safe-shutdown"))
(spacemacs/set-leader-keys (kbd "SPC o q") 'Safe-Shutdown)
;;** Mouse Bindings

;;** Faces, fonts, fontsets
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

;;** Components
;;*** Org
  (with-eval-after-load 'org
;;**** Org-mode
  (setq org-directory "~/Google Drive/Org")
  (setq org-want-todo-bindings t)
  (setq org-todo-keywords '((sequence "TODO(t)" "NEXT(n)" "WORKING(o)" "WAITING(w)" "PENDING(p)" "SOMEDAY(s)" "|" "DONE(d)" "CANCELED(c)")))
  (setq org-todo-keyword-faces '(("WORKING" . "red")("WAITING" . "yellow")("SOMEDAY" . "gray")("PENDING" . "orange")("CANCELED" . "black")))
  (setq org-display-custom-times t)
  (setq org-time-stamp-custom-formats '("<%F %a>" . "<%F %a %H:%M>"))

  (setq org-startup-with-inline-images t)
  (setq org-catch-invisible-edits t)
  (setq org-startup-folded 'content)
  (setq org-use-speed-commands t)
  (setq org-pretty-entities t)
  (setq org-archive-location "~/Google Drive/Org/Archive.org::")
  (setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))

;;**** Org-clock
  (setq spaceline-org-clock-p t)
  (setq org-clock-persist 'history)

;;**** Org-journal
  (setq org-journal-dir "~/Google Drive/Org/Journal/")
  (setq org-journal-file-format "%F")

;;**** Org-projectile
  ;(use-package org-projectile)
  ;(setq org-projectile-file "~/Google Drive/Org/Projects.org")

;;**** Org-capture
  (setq org-capture-templates
          '(("t" "Task" entry (file+headline "~/Google Drive/Org/TODOs.org" "Tasks")
             "** TODO %?\nSCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"today\"))\n %^{Effort}p \n")
            ("m" "Meeting" entry (file+headline "~/Google Drive/Org/TODOs.org" "Meetings")
             "** TODO %?\n %u\n %a %?\nSCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"today\"))")
            ("j" "Journal" entry (file+datetree "~/Google Drive/Org/Journal.org")
             "** %?\nEntered on %U\n  %i\n  %a")
            ("P" "pull-request-review" entry (file+headline "~/Google Drive/Org/TODOs.org" "Pull Requests")
             "** TODO %a %? :pr:\nDEADLINE: %(org-insert-time-stamp (org-read-date nil t \"+1d\"))")
            ("p" "process-soon" entry (file+headline "~/Google Drive/Org/TODOs.org" "Email")
             "** TODO %a %?\nDEADLINE: %(org-insert-time-stamp (org-read-date nil t \"+2d\"))")
            ("w" "wait-for-reply" entry (file+headline "~/Google Drive/Org/TODOs.org" "Email")
             "** WAITING %u %a %?\n")
            ("r" "redmine-issue" entry (file+headline "~/Google Drive/Org/TODOs.org" "Redmine Issue")
             "** TODO %a %?\nDEADLINE: %(org-insert-time-stamp (org-read-date nil t \"+2d\"))")
            ))

;;**** Org-alert
  (setq alert-default-style 'notification)

;;**** Org-agenda
  (setq org-agenda-files (list org-directory))

  (setq org-agenda-time-grid
        '((daily today require-timed)
          ()
           "......"
          "----------------------"
))
  (setq org-agenda-skip-scheduled-if-done t)
  (setq org-agenda-skip-deadline-if-done t)
  (setq org-agenda-include-deadlines t)
  (setq org-agenda-include-diary t)
  (setq org-agenda-block-separator nil)
  (setq org-agenda-compact-blocks t)
  (setq org-agenda-start-with-log-mode t)
  (setq org-agenda-property-list '("LOCATION" "TEACHER") )
  (setq org-agenda-property-position 'where-it-fits)
  (setq org-agenda-property-separator "|" )

  (setq spacemacs-theme-org-agenda-height nil)
  (add-hook 'org-agenda-mode-hook '(lambda() (hl-line-mode 1)))


  (setq org-agenda-custom-commands (list(quote
        ("z" "Super zaen view" (
           (agenda "" ((org-agenda-span 'day)
                       (org-agenda-property-list '("LOCATION" "TEACHER") )
                       (org-agenda-property-position 'where-it-fits)
                       (org-agenda-property-separator "|" )
                       (org-super-agenda-groups
                        '((:name "Today"
                                 :time-grid t
                                 :date today
                                 :todo "TODAY"
                                 :scheduled today
                                 :order 1)
                          (:name "Due Today"
                                 :deadline today
                                 :order 2)
                          (:name "Overdue"
                                 :deadline past
                                 :order 3)
                          (:name "Due Soon"
                                 :deadline future
                                 :order 4)
                          ))))
           (alltodo "" ((org-agenda-overriding-header "")
                        (org-agenda-property-list '("LOCATION" "TEACHER") )
                        (org-agenda-property-position 'where-it-fits)
                        (org-agenda-property-separator "|" )
                        (org-super-agenda-groups
                         '((:name "WORKING ON"
                                  :todo "WORKING"
                                  :order 0)
                           (:name "NEXT TO DO"
                                  :todo "NEXT"
                                  :order 1)
                           (:name "Important"
                                  :tag "Important"
                                  :priority "A"
                                  :order 6)
                           (:name "Waiting"
                                  :todo "WAITING"
                                  :order 9)
                           (:name "Assignments"
                                  :tag "Assignment"
                                  :order 10)
                           (:name "Pending"
                                  :todo "PENDING"
                                  :order 11)
                           (:name "Issues"
                                  :tag "Issue"
                                  :order 12)
                           (:name "Emacs"
                                  :tag "Emacs"
                                  :order 13)
                           (:name "Linux"
                                  :tag "Linux"
                                  :order 14)
                           (:name "Projects"
                                  :tag "Project"
                                  :order 91)
                           (:name "Research"
                                  :tag "Research"
                                  :order 15)

                           (:name "Piano"
                                  :tag "Piano"
                                  :order 25)
                           (:name "Guitar"
                                  :tag "Guitar"
                                  :order 26)

                           (:name "Kerbal Space Program"
                                  :tag "KSP"
                                  :order 29)

                           (:name "To Remember"
                                  :tag "Remember"
                                  :order 30)
                           (:name "To read"
                                  :and (:tag ("Read" "Book")
                                             :not (:todo "SOMEDAY"))
                                  :order 35
                                  )

                           (:name "Mathematics"
                                  :tag "Maths"
                                  :order 40)
                           (:name "Science"
                                  :tag ("Science" "Physics")
                                  :order 41)

                           (:name "trivial"
                                  :priority<= "C"
                                  :tag ("Trivial" "Unimportant")
                                  :todo ("SOMEDAY" )
                                  :order 90)
                           (:discard (:tag ("Chore" "Routine" "Daily")))
                           ))

                        )))
         ) ; Super zaen view
        )))

;;***** Refresh org-agenda buffer automatically
  (defun org-agenda-redo-in-other-window ()
    "Call org-agenda-redo function even in the non-agenda buffer."
    (interactive)
    (let ((agenda-window (get-buffer-window org-agenda-buffer-name t)))
      (when agenda-window
        (with-selected-window agenda-window (org-agenda-redo)))))
  (with-eval-after-load 'org-agenda
  (run-at-time nil 60 'org-agenda-redo-in-other-window))
;;***** Org-super-agenda
  (spacemacs|use-package-add-hook org-agenda
    :post-config
    (org-super-agenda-mode t)

       )

  ) ; with-eval-after-load 'org
;;*** TeX
(setq tex-default-mode 'latex-mode)
(require 'pdf-tools)
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
;;*** Gnus
(setq gnus-select-method '(nntp "news.gmane.org"))
;;*** Mozc
  (global-set-key (kbd "C-SPC") 'mozc-mode)
  (global-set-key (kbd "M-SPC") 'set-mark-command)
  (setq quail-japanese-use-double-n t)               ; Double n = ん
  (setq mozc-candidate-style 'overlay)

;;*** Terminal
  (setq explicit-shell-file-name "/bin/zsh")         ; Set default to zsh
  (setq multi-term-program explicit-shell-file-name) ; Multi-term = zsh



;;*** Deft     Note taking mode
  (setq deft-extensions '("org" "md" "txt"))         ; add more to recognize more file formats.
  (setq deft-directory "~/Google Drive/Org/Notes")


;;*** Twitter
  (setq twittering-reverse-mode t)                   ; Display tweets from the bottom of the buffer
  (setq twittering-use-icon-storage t)               ; Store the icons at .twittering-mode-icon.gz

;;*** ERC      Emacs Internet Relay Chat Client

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

;;*** EMMS     Emacs Multimedia System
  (setq emms-source-file-default-directory "~/Music/")

;;*** Spaceline
  (setq powerline-default-separator 'bar)

;;*** Neotree  File tree plugin
  (setq neo-theme 'icons)
  (setq neo-smart-open t)
  (setq projectile-switch-project-action 'neotree-projectile-action)
  (setq neo-vc-integration nil)

;;*** Dired    DIRectory EDitor

;;*** Ranger

;;*** EWW      Emacs Web Browser
  (defvar eww-disable-colorize t)
  (defun shr-colorize-region--disable (orig start end fg &optional bg &rest _)
    (unless eww-disable-colorize
      (funcall orig start end fg)))
  (advice-add 'shr-colorize-region :around 'shr-colorize-region--disable)
  (advice-add 'eww-colorize-region :around 'shr-colorize-region--disable)
  (defun eww-disable-color ()
    "No color displayed in eww"
    (interactive)
    (setq-local eww-disable-colorize t)
    (eww-reload))
  (defun eww-enable-color ()
    "Enable color in eww"
    (interactive)
    (setq-local eww-disable-colorize nil)
    (eww-reload))
  (setq browse-url-generic-program (executable-find "chromium"))
  (setq shr-external-browser 'browse-url-generic)



;;** Behavior
;;*** Minor-modes
  (golden-ratio-mode 0)
  (setq golden-ratio-auto-scale t)

  (add-hook 'emacs-lisp-mode-hook 'turn-on-orgstruct)

  (beacon-mode 1)

;;*** Show system name and currently editing file name in the title bar
  (setq frame-title-format '("" "%b − Spacemacs"))

;;*** Default Browser
  (setq browse-url-browser-function 'browse-url-chromium)

;;*** Default frame
  (add-to-list 'default-frame-alist '(fullscreen . maximized)) ; Maximized by default
  (setq frame-resize-pixelwise t)                              ; Fix the gap

;;*** Save Desktop
  (desktop-save-mode 0)

;;*** Delete region
  (delete-selection-mode 1)

;;*** Scroll Bar (yascroll)
  (global-yascroll-bar-mode 1)

;;*** Modeline
;;**** mode line time stamp
  (setq display-time-day-and-date t)
  (setq display-time-24hr-format t)
  (setq display-time-format "%m/%d %T")              ; Month/Day Hour:Minute:Second
  (setq display-time-interval 1)               ; update every second
;;**** No load average
  (setq display-time-default-load-average nil)
;;**** No "Mail"
  (setq display-time-mail-string "")
  (display-time-mode 1)
;;**** all-the-icons theme
  (with-eval-after-load 'spaceline
  (spacemacs|use-package-add-hook spaceline-all-the-icons
    :post-config
    (spaceline-all-the-icons)
    (spaceline-all-the-icons--setup-anzu)            ;; Enable anzu searching
    (spaceline-all-the-icons--setup-package-updates) ;; Enable package update indicator
    (spaceline-all-the-icons--setup-git-ahead)       ;; Enable # of commits ahead of upstream in git
    (spaceline-all-the-icons--setup-paradox)         ;; Enable Paradox mode line
    (spaceline-all-the-icons--setup-neotree)         ;; Enable Neotree mode line
    )
  )

;;*** Open *.foo in foo-mode
  ;;(add-to-list 'auto-mode-alist '("\\.foo\\'" . foo-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
(add-to-list 'auto-mode-alist '("\\.pdf\\'" . pdf-view-mode))

;;*** Org-super-zaen-view on startup
(with-eval-after-load 'org
(defun org-super-zaen-view(&optional arg)
    (interactive "P")
    (org-agenda arg "z"))

  (defun org-super-zaen-view-startup()
    (interactive)
    (org-super-zaen-view)
    (spacemacs/toggle-maximize-buffer)
    (get-buffer "*Org Agenda*")
    ;(switch-to-buffer "#<buffer *Org Agenda*>")
    ;; (text-scale-increase)

    (split-window-right)
    (other-window 1)
    (find-file "~/Google Drive/Org/TODOs.org")
    (split-window-below)
    (other-window 1)
    (find-file "~/Google Drive/Org/Projects.org")
    )
;(org-super-zaen-view-startup)

)

    ;; And the following in emacs-custom-settings
    ;; '(initial-buffer-choice (quote org-super-zaen-view-startup))

;;** Diminishing

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

;;** Layouts

  (spacemacs|define-custom-layout "Chats"
  :binding "C"
  :body
  (progn
    ;; hook to add all ERC buffers to the layout
    (defun spacemacs-layouts/add-erc-buffer-to-persp ()
      (persp-add-buffer (current-buffer)
                        (persp-get-by-name
                         erc-spacemacs-layout-name)))
    (add-hook 'erc-mode-hook #'spacemacs-layouts/add-erc-buffer-to-persp)
    ;; Start ERC
    (call-interactively 'erc)
    )
  )

(spacemacs|define-custom-layout "TeX"
  :binding "t"
  :body
  (progn
    (find-file "~/Workspace/TeX")
    (neotree-dir "~/Workspace/TeX")))

  (spacemacs|define-custom-layout "Notebook"
  :binding "n"
  :body
  (progn
    (find-file "~/Google Drive/Notebooks/notebook.txt")
    (org-mode)
    (neotree-show)
  	)
  )

(spacemacs|define-custom-layout "Monitor"
  :binding "M"
  :body
  (progn
    (defun multi-term-journalctl ()
      (interactive)
      (let((multi-term-program "/bin/journalctl"))
        (multi-term))
      )
    (defun multi-term-htop ()
      (interactive)
      (let ((multi-term-program "/bin/htop"))
        (multi-term))
      )
    (defun multi-term-netstat ()
      (interactive)
      (let((multi-term-program "netstat -a | more"))
        (multi-term))
      )
    (multi-term-htop)
    (split-window-below)
    (other-window 1)
    (split-window-right)
    (multi-term-netstat)
    (other-window 1)
    (multi-term-journalctl)
    ))
;;*** Auto layout
  ;; (persp-def-auto-persp "init.el"
  ;;                       :mode   emacs-lisp-mode
  ;;                       :switch 'window
  ;;                       :hooks '(after-switch-to-buffer-functions)
  ;;                       :dyn-env '(after-switch-to-buffer-functions ;; prevent recursion
  ;;                                  persp-add-buffer-on-after-change-major-mode)
  ;;  )
;;** Theme per layout

;;** Theme per mode
  ;; (spacemacs|use-package-add-hook org)
  ;; :post-config
  ;;   (load-theme-buffer-local 'spacemacs-light (current-buffer))

   ;; (add-hook 'org-mode-hook
   ;;      (lambda ()
   ;;         (load-theme-buffer-local 'spacemacs-light (current-buffer))
   ;;       )
   ;;  )


   ;; ;; Do not activate with the following modes
   ;; (setq per-buffer-theme/ignored-buffernames-regex
   ;;       '("\\*mini" "\\*Mini" "\\*helm" "\\*Helm"
   ;;         "\\*anything" "\\*Anything"
   ;;         "One-Key" "guide-key"))
   ;; ;; Default theme
   ;; (setq per-buffer-theme/default-theme 'spacemacs-dark)
   ;; ;; Settings
   ;; (setq per-buffer-theme/themes-alist
   ;;       '(((:theme . notheme)             ; Disable Theme
   ;;          (:buffernames . ("*eww" "*w3m" "*mu4e"))
   ;;          (:modes . (eww-mode w3m-mode cfw:calendar-mode mu4e-main-mode mu4e-headers-mode mu4e-view-mode mu4e-compose-mode mu4e-about-mode mu4e-update-mode)))
   ;;         ((:theme . tango-dark)
   ;;          (:buffernames . ("*Messages*"))
   ;;          (:modes . (nil)))
   ;;         ((:theme . spacemacs-light)
   ;;          (:buffernames . (nil))
   ;;          (:modes . (org-mode)))
   ;;         ))
