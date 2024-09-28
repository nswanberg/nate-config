;; Enable package management and add package repositories
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; Install and enable Evil mode
(unless (package-installed-p 'evil)
  (package-refresh-contents)
  (package-install 'evil))
(require 'evil)
(evil-mode 1)

;; Install Magit
(unless (package-installed-p 'magit)
  (package-refresh-contents)
  (package-install 'magit))

;; Install Python, SQL, and Jupyter utilities
(unless (package-installed-p 'elpy)
  (package-refresh-contents)
  (package-install 'elpy))
(elpy-enable)

(unless (package-installed-p 'sql)
  (package-refresh-contents)
  (package-install 'sql))

(unless (package-installed-p 'ein) ;; Emacs IPython Notebook
  (package-refresh-contents)
  (package-install 'ein))

;; === Steve Yegge Tips ===
;; Swap Caps-Lock and Control (assuming set at OS level for ergonomics)
;; This allows better use of Ctrl shortcuts without awkward stretching.

;; Remap Ctrl-x as Meta key (Steve Yegge Tip: Alt-x is hard to reach)
(setq x-meta-keysym 'ctrl-x)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)

;; Backward kill word instead of backspace (Steve Yegge Tip: Faster correction)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)

;; Disable UI elements (Steve Yegge Tip: Lose the UI for more screen space)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Window and buffer management (Steve Yegge Tip: Master buffer/window commands)
(global-set-key (kbd "C-x 2") 'split-window-vertically)
(global-set-key (kbd "C-x 3") 'split-window-horizontally)
(global-set-key (kbd "C-x o") 'other-window)
(global-set-key (kbd "C-x 1") 'delete-other-windows)
(global-set-key (kbd "C-x C-b") 'list-buffers)

;; Incremental search for navigation (Steve Yegge Tip: Faster navigation)
(global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "C-r") 'isearch-backward)

;; Temp Buffers for scratch usage (Steve Yegge Tip: Use temp buffers)
(global-set-key (kbd "C-x b") 'switch-to-buffer)

;; Enable keyboard macros (Steve Yegge Tip: Use macros to automate)
(global-set-key [f5] 'call-last-kbd-macro)

;; Help commands for faster access (Steve Yegge Tip: Learn help functions)
(global-set-key (kbd "C-h b") 'describe-bindings)
(global-set-key (kbd "C-h k") 'describe-key)
(global-set-key (kbd "C-h a") 'apropos)

;; Replace regexp search and replace with better bindings (Steve Yegge Tip: Use regexps)
(defalias 'qrr 'query-replace-regexp)
(global-set-key (kbd "M-r") 'isearch-backward-regexp)
(global-set-key (kbd "M-s") 'isearch-forward-regexp)

;; Steve Yegge Tip: Transpose words (Alt-t) for fine-grained word manipulation
(global-set-key (kbd "M-t") 'transpose-words)

;; Steve Yegge Tip: Kill-line behavior remains as default (Ctrl-k) for fine-grained control

;; === End of Steve Yegge Tips ===

;; Customizations for Python, SQL, Jupyter
(elpy-enable)

;; Show line numbers for better navigation
(global-display-line-numbers-mode t)

;; Enable column numbers in status bar
(column-number-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(ein elpy racket-mode magit evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
