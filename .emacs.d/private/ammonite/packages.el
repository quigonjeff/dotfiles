;;; packages.el --- ammonite layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Jefferson Andrade <jefferson@orax>
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `ammonite-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `ammonite/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `ammonite/pre-init-PACKAGE' and/or
;;   `ammonite/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst ammonite-packages
  '(org scala-mode ob-ammonite ammonite-term-repl))

(defun ammonite/init-ammonite-term-repl ()
  "Initialize `ammonite-term-repl'")

(defun ammonite/init-ob-ammonite ()
  "Initialize `ob-ammonite'")

(defun ammonite/post-init-org ()
  (add-to-list 'org-babel-load-languages '(scala . t))
  (add-to-list 'org-babel-load-languages '(amm . t)))

(defun ammonite/post-init-scala-mode ()
  (add-hook 'scala-mode-hook
            (lambda () (ammonite-term-repl-minor-mode t))))

;;; packages.el ends here
