(load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/usr/bin/local/sbcl")
(setq slime-default-lisp 'sbcl)
