(defun hdiv (wd msg)
  "Create a divider made of hash marks
   of the given width and containing the
   given message in the centre"
  (interactive "sWidth: \nsMessage: \n")
  (setq wd (string-to-number wd)
        wd (- wd 2 (length msg))
        lhs-len (/ wd 2)
        rhs-len (- wd lhs-len))
  (condition-case ex
      (insert (concat (make-string lhs-len ?#)
                       "\s"
                       msg
                       "\s"
                      (make-string rhs-len ?#)))
  ('error (message "Unable to parse arguments"))))
