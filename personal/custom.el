;;; package --- Summary

;;; Commentary:
;; Custom configuration for Emacs Prelude

;;; Code:

(prelude-require-packages '(solarized-theme js3-mode))
(setq prelude-guru nil)
(setq prelude-flyspell nil)

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

;;; custom.el ends here
