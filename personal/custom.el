;;; package --- Summary

;;; Commentary:
;; Custom configuration for Emacs Prelude

;;; Code:

(prelude-require-packages '(solarized-theme js3-mode helm-spotify tern
                                            tern-auto-complete))
(setq prelude-guru nil)
(setq prelude-flyspell nil)

(tool-bar-mode -1)

(global-hl-line-mode nil)
(load-theme 'solarized-dark t)

;; Remove UI elements
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode 0))
(if (fboundp 'tool-bar-mode) (tool-bar-mode 0))
(if (fboundp 'menu-bar-mode) (menu-bar-mode 0))

;; Set alternative hotkeys for Alt+x
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Set alternative hotkeys for backspace
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; Easy scrolling key-bindings
(global-set-key "\M-n" '"\C-u1\C-v")
(global-set-key "\M-p" '"\C-u1\M-v")

;; Change font elements
(setq-default indent-tabs-mode nil)
(setq-default column-number-mode t)
(set-frame-font "Inconsolata-13")

(add-to-list 'default-frame-alist
             '(font . "Inconsolata-13"))

;; Use yaml-mode for RAML files
(add-to-list 'auto-mode-alist '("\\.raml\\'" . yaml-mode))

(setq js-indent-level 2)

;; Customize js3-mode
(custom-set-variables
 '(js3-consistent-level-indent-inner-bracket t))

;; set up tern
(add-hook 'js3-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

;;; custom.el ends here
