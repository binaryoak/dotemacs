(include-packages 'js3-mode)

;; code block toggle
;; (add-hook 'js-mode-hook
;;           (lambda ()
;;             (imenu-add-menubar-index)
;;             (hs-minor-mode t)))
;; (global-set-key [C-tab] (quote hs-toggle-hiding))
(add-hook 'js3-mode-hook
          (lambda ()
            ;; (setq
            ;; '(js3-auto-indent-p t)         ; it's nice for commas to right themselves.
            ;; '(js3-enter-indents-newline t) ; don't need to push tab before typing
            ;; '(js3-indent-on-enter-key t))   ; fix indenting before moving on
            (imenu-add-menubar-index)
            (add-to-list 'ac-modes 'js3-mode)
            (auto-complete-mode t)
            (setq js3-consistent-level-indent-inner-bracket t)
            (hs-minor-mode t)))
(global-set-key [C-tab] (quote hs-toggle-hiding))

;; tern
;; (autoload 'tern-mode "tern.el" nil t)
;; (add-hook 'js-mode-hook (lambda () (tern-mode t)))
;; (eval-after-load 'tern
;;    '(progn
;;       (require 'tern-auto-complete)
;;       (tern-ac-setup)))

;; syntax check
;; (require 'flymake-easy)
;; (require 'flymake-jshint)
;; (add-hook 'js-mode-hook 'flymake-mode)
;; (setq jshint-configuration-path (concat user-emacs-directory "language/jshint.json"))
;; (eval-after-load 'flymake '(require 'flymake-cursor))

(require 'js3-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))
;; (require 'js2-mode)
;; (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
