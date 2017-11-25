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
  (setq org-agenda-log-mode-items '(closed clock state))
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
