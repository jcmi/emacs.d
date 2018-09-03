(defcustom jcm-dev-root-dir "~/workspace"
  "Root directory of development."
  :type 'directory
  :group 'jcm)

(defcustom jcm-phab-url "https://phabricator.twitter.biz"
  "Phabricator url."
  :type 'string
  :group 'jcm)

(defun jcm-browse-phab-this-file ()
  "Browse the phabricator url for the current buffer's file name."
  (interactive)
  (browse-url (jcm-phab-url-from-path (buffer-file-name) (line-number-at-pos))))

(defun jcm-phab-url-from-path (path &optional line-number)
  "Create a phabricator url for PATH and optionall the current LINE-NUMBER."
  (string-match (concat (expand-file-name jcm-dev-root-dir) "/\\([^/]+\\)/\\(.*\\)") path)
  (let ((repo (match-string 1 path))
        (path (match-string 2 path)))
    (concat
     jcm-phab-url
     "/source/" repo "/browse/master/" path (when line-number (concat "$" (number-to-string line-number)))
     )
    ))

(provide 'init-phabricator)
