(defun el-get-setup ()
  (push '(:name js2-mode-mooz
                :type git
                :url "git://github.com/mooz/js2-mode.git"
                :load "js2-mode.el"
                :compile ("js2-mode.el")
                :features js2-mode)
        el-get-sources)

                                        ; list all packages you want installed
  (setq my-el-get-packages
        (append
         '(js2-mode-mooz)
         (mapcar 'el-get-source-name el-get-sources)))

  (el-get 'sync my-el-get-packages)
  't)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (and (require 'el-get nil t)
             (el-get-setup))
  (with-current-buffer (url-retrieve-synchronously
                        "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (end-of-buffer)
    (previous-line 2)
    (end-of-line)
    (eval-print-last-sexp)
    (el-get-setup)))
