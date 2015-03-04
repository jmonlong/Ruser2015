(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; Solarized
(load-theme 'sanityinc-solarized-dark t) 

;; Edit compressed files
(auto-compression-mode t)

;; Disable startup screen
(setq inhibit-splash-screen t)

;; Turn the blinking off
(blink-cursor-mode 0)

;;; Turn off the tool-bar (<=0 off, >0 on)
(tool-bar-mode 0)
;;; turn off the menu bar (<=0 off, >0 on)
;;(menu-bar-mode 0)

(set-default-font "Consolas 14")

;; ESS
(add-to-list 'load-path "~/.emacs.d/lisp/ess/ess-14.09/lisp/")
(load "ess-site")
(setq ess-describe-at-point-method 'tooltip)
(setq ess-ask-for-ess-directory nil)

;; set indentation size
(setq ess-default-style 'DEFAULT)
(setq ess-indent-level 2)
;; imenus
(require 'imenu-anywhere)
(global-set-key [?\M-o] 'imenu-anywhere)
;; Smart underscore
(require 'ess-smart-underscore)
(setq ess-S-underscore-when-last-character-is-a-space t)
;; AutoComplete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp//ac-dict")
(ac-config-default)
(setq ac-auto-start nil)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(define-key ac-completing-map [return] nil)
(setq ac-quick-help-delay 0.1)
;; Eldoc : Show function information when cursor on function
(setq ess-eldoc-show-on-symbol t)



;; Mac key bindings
;(define-key function-key-map (kbd "M-<down>") 'forward-paragraph)
;(define-key function-key-map (kbd "M-<up>") 'backward-paragraph)

;;; OSX : Window size
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)
;;; Window focus
(x-focus-frame nil)

;; Modes and file extensions
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))


;; Ispell location
(setq ispell-program-name "/usr/local/Cellar/ispell/3.3.02/bin/ispell")
;; Flyspell "right click"
(eval-after-load "flyspell"
    '(progn
       (define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
       (define-key flyspell-mouse-map [mouse-3] #'undefined)))
;; Autoturn on for latex documents
(add-hook 'latex-mode-hook 'flyspell-mode)
