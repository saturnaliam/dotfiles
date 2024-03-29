;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; personal stuff
(setq confirm-kill-emacs nil) ;; removing annoying "are you sure you wanna leave? :nerd:"
(setq doom-font (font-spec :family "FiraCode Nerd Font" :size 14)) ;; relationship w/ jetbrains over <3
(setq doom-theme 'catppuccin) ;; I LOVE CATPPUCCIN !!
(setq display-line-numbers-type 'relative) ;; relative line numbers
(setq-default tab-width 2) ;; sets tabs to 2 spaces
(setq-default indent-tabs-mode nil)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
(map!
 :g "M-]" #'next-buffer ;; yea
 :g "M-[" #'previous-buffer
 :g "M-n" #'project-compile
 :g "M-RET" #'projectile-run-shell
)

(setq prettify-symbols-mode nil)

(setq catppucin-flavor 'mocha)

;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
