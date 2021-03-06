;;; packages.el --- Passwords Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Andrew Oppenlander <andrew.oppenlander@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq pass-packages
      '(
        (ivy-pass :requires ivy)
        (helm-pass :requires helm)
        password-store
        ))

(defun pass/init-helm-pass ()
  (use-package helm-pass
    :defer t
    :init (spacemacs/set-leader-keys "atP/" 'helm-pass)))

(defun pass/init-ivy-pass ()
  (use-package ivy-pass
    :defer t
    :init (spacemacs/set-leader-keys "atP/" 'ivy-pass)))

(defun pass/init-password-store ()
  (use-package password-store
    :defer t
    :init
    (progn
      (spacemacs/declare-prefix "atP" "pass")
      (spacemacs/set-leader-keys
        "atPy" 'password-store-copy
        "atPg" 'password-store-generate
        "atPi" 'password-store-insert
        "atPc" 'password-store-edit
        "atPr" 'password-store-rename
        "atPd" 'password-store-remove
        "atPD" 'password-store-clear
        "atPI" 'password-store-init
        "atPw" 'password-store-url
        "atP?" 'spacemacs/pass-describe
        "atPY" 'spacemacs/pass-copy-and-describe))))
