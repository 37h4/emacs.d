;;; package --- A beautiful theme
;;; Commentary:
;;; Everforest Dark Hard based theme, adapted from rose-pine


;;; Code:
(eval-when-compile
  (require 'cl-lib))

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))


(autothemer-deftheme
	everforest-dark-hard "A theme based on Everforest Dark Hard's amazing color scheme"

 ((((class color) (min-colors #xFFFFFF))        ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))           ; col 2 Xterm/256

  ;; Define our color palette
  (highlight-high   "#475258" "#d7d7ff")
  (highlight-med    "#3D484D" "#d7d7ff")
  (highlight-low    "#3C4841" "#d7d7ff")
  (purple           "#D699B6" "#d7d7ff")
  (aqua             "#83C092" "#00d7ff")
  (aqua-low         "#48584E" "#00d7ff")
  (blue             "#7FBBB3" "#afffff")
  (orange           "#E69875" "#ffffff")
  (orange-low       "#59464C" "#ffffff")
  (yellow           "#DBBC7F" "#ffd7af")
  (yellow-low       "#55544A" "#ffd7af")
  (red              "#E67E80" "#ff87af")
  (fg               "#D3C6AA" "#ffffff")
  (grey1            "#859289" "#ffffff")
  (grey0            "#7A8478" "#ffffff")
  (bg1              "#343F44" "#ffffff")
  (bg-dim           "#1E2326" "#ffffff")
  (bg0              "#2D353B" "#ffffff")
  (ex               "#181E22" "#F00000"))

 ;; Customize faces
 (
  (default                              (:background bg-dim :foreground fg))
  (border                               (:foreground grey0))
  (bookmark-face                        (:foreground red))
  (button                               (:foreground aqua))
  (child-frame                          (:foreground bg-dim))
  (child-frame-border                   (:foreground bg-dim))
  (cursor                               (:background yellow :foreground bg-dim))
  (error                                (:foreground red))
  (link                                 (:foreground purple))
  (fringe                               (:foreground bg1))
  (file-name-shadow                     (:foreground grey0))
  (glyph-face                           (:background red :foreground grey0))
  (glyphless-char                       (:foreground grey0))
  (header-line                          (:background bg-dim :foreground orange :weight 'semi-bold :italic t))
  (highlight                            (:background yellow :foreground bg-dim :distant-foreground bg-dim))
  (hl-line                              (:background bg1))
  (homoglyph                            (:foreground aqua))
  (line-number                          (:foreground highlight-high))
  (line-number-current-line             (:background bg1 :foreground purple :bold t))
  (match                                (:background yellow :foreground bg-dim))
  (menu                                 (:foreground orange))
  (fill-column-indicator                (:foreground bg1))
  (mode-line                            (:background bg-dim :foreground grey0))
  (mode-line-inactive                   (:background bg1))
  (mode-line-active                     (:foreground grey0 :background bg-dim))
  (mode-line-highlight                  (:foreground orange))
  (mode-line-buffer-id                  (:foreground fg :bold t))
  (numbers                              (:background yellow))
  (region                               (:background fg :foreground highlight-med))
  (tooltip                              (:background grey0 :foreground bg-dim))
  (shadow                               (:foreground grey0))
  (success                              (:foreground blue))
  (vertical-border                      (:foreground bg1))
  (warning                              (:foreground yellow))
  (window-divider                       (:foreground bg-dim :distant-foreground bg-dim))

  (whitespace-newline                   (:foreground grey0))
  (whitespace-space                     (:foreground grey0))
  (whitespace-trailing                  (:foreground bg-dim :background red))

  ;; ;; Font lock
  (font-lock-bracket-facei              (:foreground red))
  (font-lock-builtin-face               (:foreground purple))
  (font-lock-comment-delimiter-face     (:foreground grey0 :italic t))
  (font-lock-comment-face               (:foreground grey0 :italic t))
  (font-lock-constant-face              (:foreground orange))
  (font-lock-doc-face                   (:foreground grey0))
  (font-lock-doc-markup-face            (:foreground grey0))
  (font-lock-function-name-face         (:foreground blue))
  (font-lock-function-call-face         (:foreground blue))
  (font-lock-keyword-face               (:foreground purple :weight 'semi-bold))
  (font-lock-misc-punctuation-face      (:foreground yellow))
  (font-lock-negation-char-face         (:foreground red))
  (font-lock-preprocessor-face	   	(:foreground grey0))
  (font-lock-property-name-face	        (:foreground aqua))
  (font-lock-property-use-face	        (:foreground purple :weight 'thin))
  (font-lock-reference-face		(:foreground aqua))
  (font-lock-regexp-grouping-backslash  (:foreground aqua :weight 'semi-bold))
  (font-lock-string-face                (:foreground yellow :italic t))
  (font-lock-type-face                  (:foreground red :weight 'semi-bold))
  (font-lock-variable-name-face         (:foreground fg))
  (font-lock-warning-face               (:foreground yellow))
  
  (elisp-shorthand-font-lock-face       (:foreground yellow))

  (highlight-operators-face             (:foreground red))
  (highlight-quoted-symbol              (:foreground orange))
  (highlight-numbers-face               (:foreground red))
  (highlight-symbol-face                (:background highlight-med :foreground grey1))
  (info-xref                            (:foreground yellow))

  (minibuffer-prompt-end                (:foreground red))
  (minibuffer-prompt                    (:foreground red))
  (epa-mark                             (:foreground red))
  (dired-mark                           (:foreground red))
  (dired-ignored                        (:background yellow))

  (iedit-occurrence                     (:background aqua :foreground bg-dim))
  (iedit-read-only-occurrence           (:background blue :foreground bg-dim))
  
  (trailing-rosewaterspace              (:background bg1))

  ;;elfeed
  (elfeed-search-feed-face              (:foreground purple))
  (elfeed-search-tag-face               (:foreground aqua))

  ;; message colors
  (message-header-name                  (:foreground grey0))
  (message-header-other                 (:foreground yellow))
  (message-header-subject               (:foreground yellow))
  (message-header-to                    (:foreground orange))
  (message-header-cc                    (:foreground blue))
  (message-header-xheader               (:foreground orange))
  (custom-link                          (:foreground aqua :underline t))
  
  ;; org-mode
  (with-eval-after-load "org"
    (org-done                             (:foreground grey0))
    (org-code                             (:background bg-dim))
    (org-meta-line                        (:background bg1 :foreground aqua))
    (org-block                            (:background bg-dim))
    (org-block-begin-line                 (:background bg-dim :foreground grey0))
    (org-block-end-line	                (:background bg-dim :foreground grey0))
    (org-headline-done                    (:foreground grey0 :strike-through t))
    (org-todo                             (:foreground blue :bold t))
    (org-headline-todo                    (:foreground bg-dim))
    (org-upcoming-deadline                (:foreground red))
    (org-footnote                         (:foreground blue))
    (org-indent                           (:foreground bg-dim))
    (org-hide	                            (:foreground bg-dim))
    (org-date                             (:foreground grey0))
    (org-ellipsis                         (:foreground grey0 :bold t))
    (org-level-1                          (:foreground red :height 1.3 :bold t))
    (org-level-2                          (:foreground purple :height 1.15 :bold t))
    (org-level-3                          (:foreground orange :height 1.05))
    (org-level-4                          (:foreground fg))
    (org-level-5                          (:foreground fg))
    (org-level-6                          (:foreground yellow))
    (org-level-7                          (:foreground yellow))
    (org-level-8                          (:foreground orange)))

  ;; which-key
  (which-key-key-face                   (:inherit 'font-lock-variable-name-face))
  (which-func							(:inherit 'font-lock-function-name-face :bold t))
  (which-key-group-description-face     (:foreground red))
  (which-key-command-description-face   (:foreground aqua))
  (which-key-local-map-description-face (:foreground yellow))
  (which-key-posframe					(:background bg-dim))
  (which-key-posframe-border			(:background bg-dim))

  ;; swiper
  (swiper-line-face                     (:foreground yellow))
  (swiper-background-match-face-1       (:background yellow :foreground bg-dim))
  (swiper-background-match-face-2       (:background aqua :foreground bg-dim))
  (swiper-background-match-face-3       (:background orange :foreground bg-dim))
  (swiper-background-match-face-4       (:background red :foreground bg-dim))
  (swiper-match-face-1					(:inherit 'swiper-background-match-face-1))
  (swiper-match-face-2					(:inherit 'swiper-background-match-face-2))
  (swiper-match-face-3					(:inherit 'swiper-background-match-face-3))
  (swiper-match-face-4					(:inherit 'swiper-background-match-face-4))

  (counsel-outline-default              (:foreground yellow))
  (info-header-xref                     (:foreground yellow))
  (xref-file-header                     (:foreground yellow))
  (xref-match		                    (:foreground yellow))

  ;; rainbow delimiter
  (rainbow-delimiters-mismatched-face   (:foreground bg-dim :background red))
  (rainbow-delimiters-unmatched-face    (:foreground bg-dim :background red))
  (rainbow-delimiters-base-error-face   (:foreground bg-dim :background red))

  (rainbow-delimiters-base-face         (:foreground grey0))

  (rainbow-delimiters-depth-1-face      (:foreground blue))
  (rainbow-delimiters-depth-2-face      (:foreground orange))
  (rainbow-delimiters-depth-3-face      (:foreground red))
  (rainbow-delimiters-depth-4-face      (:foreground aqua))
  (rainbow-delimiters-depth-5-face      (:foreground purple))
  (rainbow-delimiters-depth-6-face      (:foreground grey1))
  (rainbow-delimiters-depth-7-face      (:foreground grey0))
  (rainbow-delimiters-depth-8-face      (:foreground yellow))
  (rainbow-delimiters-depth-9-face      (:foreground purple))

  ;; show-paren
  (show-paren-match						(:background orange :foreground bg-dim :bold t))
  (show-paren-match-expression			(:background orange :foreground bg-dim :bold t))
  (show-paren-mismatch					(:background red))

  (company-tooltip                          (:background bg1 :foreground fg))
  (company-tooltip-common                   (:foreground yellow :distant-foreground bg-dim :bold t))
  (company-tooltip-search                   (:foreground yellow))
  (company-tooltip-selection                (:background bg1 :bold t :underline t))
  (company-tooltip-mouse                    (:foreground bg-dim :distant-foreground fg))
  (company-tooltip-annotation               (:foreground grey0 :distant-foreground yellow))
  (company-tooltip-scrollbar-track          (:background yellow))
  (company-tooltip-scrollbar-thumb          (:background orange))
  (company-tooltip-quick-access             (:foreground bg1))
  (company-tooltip-quick-access-selection   (:foreground yellow))
  (company-scrollbar-bg                     (:inherit 'tooltip))
  (company-scrollbar-fg                     (:background red))
  (company-preview                          (:foreground red))
  (company-preview-common                   (:background red :foreground bg-dim))
  (company-preview-search                   (:inherit 'company-tooltip-search))
  (company-template-field                   (:inherit 'match))

  (markdown-hr-face                     (:foreground bg1))

  ;; Flycheck
  (flycheck-posframe-background-face    (:background bg-dim))
  (flycheck-posframe-face               (:background bg-dim))
  (flycheck-posframe-info-face          (:foreground aqua :background "#1B2431" :height 160))
  (flycheck-posframe-warning-face       (:foreground "#FFF" :background "#2F3E56" :height 160 :weight 'semi-light))
  (flycheck-posframe-error-face         (:foreground "#FFF" :background "#2D1E28" :height 160 :weight 'semi-light))
  (flycheck-fringe-warning              (:inherit 'warning))
  (flycheck-fringe-error                (:inherit 'error))
  (flycheck-fringe-info                 (:inherit 'info ))
  (flycheck-error-list-warning          (:inherit 'warning :bold t))
  (flycheck-error-list-error            (:inheirt 'error :bold t))
  (flycheck-error-list-info             (:foreground aqua :bold t))
  (flycheck-inline-error                (:background red :foreground red :height 128))
  (flycheck-inline-info                 (:background aqua :foreground aqua :height 128))
  (flycheck-inline-warning              (:background yellow :foreground yellow :height 128))
  
  ;; indent dots
  (highlight-indent-guides-character-face       (:foreground red :background red))
  (highlight-indent-guides-stack-character-face (:foreground red :background red))
  (highlight-indent-guides-top-character-face   (:foreground red :background red))
  (highlight-indent-guides-stack-odd-face       (:foreground red :background red))
  (highlight-indent-guides-stack-even-face      (:foreground red :background red))
  (highlight-indent-guides-even-face            (:foreground red :background red))
  (highlight-indent-guides-odd-face             (:foreground red :background red))
  (highlight-indent-guides-top-odd-face         (:foreground red :background red))
  (highlight-indent-guides-top-even-face        (:foreground red :background red))

   ;;;; ivy
  (ivy-current-match                            (:background aqua :foreground bg-dim :bold t))
  (ivy-action                                   (:background bg-dim :foreground purple))
  (ivy-grep-line-number                         (:background bg-dim :foreground yellow))
  (ivy-minibuffer-match-face-1                  (:background bg-dim :foreground aqua :bold t))
  (ivy-minibuffer-match-face-2                  (:background bg-dim :foreground blue))
  (ivy-minibuffer-match-highlight               (:foreground aqua))
  (ivy-grep-info                                (:foreground aqua))
  (ivy-grep-line-number                         (:foreground purple))
  (ivy-confirm-face                             (:foreground blue))

  (vertico-multiline                            (:background bg-dim))
  (vertico-group-title                          (:foreground grey1 :weight 'semi-bold :height 180))
  (vertico-group-separator                      (:foreground grey0 :strike-through t))
  (vertico-current                              (:background bg1 :distant-foreground fg :bold t :foreground bg-dim))

  (vertico-posframe-border                      (:background bg-dim))
  (vertico-posframe                             (:background bg-dim :foreground grey0))

  (corfu-annotations                            (:foreground grey0))
  (corfu-current                                (:inherit 'vertico-current))
  (corfu-border                                 (:background bg1))
  (corfu-bar                                    (:background yellow))
  (corfu-default                                (:background bg-dim :foreground fg))
  (corfu-popupinfo                              (:background bg1 :foreground fg :weight 'light :italic t))
  
  ;; posframe's
  (ivy-posframe                                 (:background grey0))
  (ivy-posframe-border                          (:inherit 'ivy-posframe))

  (orderless-match-face-0                       (:foreground red :background "#3B2D2F" :weight 'semi-bold))
  (orderless-match-face-1                       (:foreground aqua :background "#2A3830" :weight 'semi-bold))
  (orderless-match-face-2                       (:foreground yellow :background "#38342A" :weight 'semi-bold))
  (orderless-match-face-3                       (:foreground purple :background "#352D38" :weight 'semi-bold))

  (comint-highlight-prompt                      (:background yellow :foreground bg-dim))

  (completions-annotations                      (:foreground grey0 :italic t))
  (completions-highlight                        (:foreground aqua :italic t))
  (completions-common-part                      (:foreground yellow :distant-foreground bg-dim :distant-background blue :bold t :italic t))
  (completions-first-difference                 (:foreground red :strike-through t))
  (consult-file                                 (:foreground grey0 :distant-foreground bg-dim))

  (diff-added (:background blue :foreground fg))
  (diff-changed (:background yellow :foreground bg-dim))
  
  (treemacs-directory-collapsed-face			(:foreground grey0))
  (treemacs-directory-face						(:foreground grey1))
  (treemacs-file-face							(:foreground grey1))
  (treemacs-fringe-indicator-face               (:foreground red))

  (treemacs-git-added-face						(:foreground yellow))
  (treemacs-git-renamed-face				   	(:foreground orange))
  (treemacs-git-ignored-face				   	(:foreground grey0))
  (treemacs-git-unmodified-face		   			(:foreground fg))
  (treemacs-git-renamed-face		   			(:foreground fg))
  (treemacs-git-modified-face		   			(:foreground orange))

  ;; lets support solaire mode
  (solaire-default-face (:background bg0))
  ;; lsp
  (lsp-headerline-breadcrumb-path-error-face (:underline (:color orange :style 'wave)
                                                         :foreground grey0 :background bg-dim))

  (lsp-headerline-breadcrumb-path-face				(:background grey0))
  (lsp-headerline-breadcrumb-path-hint-face	   		(:background bg-dim))
  (lsp-headerline-breadcrumb-path-info-face	   		(:background grey0))
  (lsp-headerline-breadcrumb-separator-face			(:background grey0))
  (lsp-headerline-breadcrumb-symbols-face			(:background aqua))
  (lsp-headerline-breadcrumb-project-prefix-face	(:background yellow))
  (lsp-headerline-breadcrumb-symbols-error-face     (:foreground red))

  (lsp-ui-doc-background							(:background bg-dim :foreground red))
  (lsp-ui-doc-header								(:background bg-dim :foreground red))
  (lsp-ui-peek-filename								(:foreground aqua))
  (lsp-ui-sideline-code-action			   			(:foreground yellow))
  (lsp-ui-sideline-current-symbol					(:foreground aqua))
  (lsp-ui-sideline-symbol							(:foreground grey0))

  ;; dashboard
  (dashboard-items-face								(:weight 'light :height 150))
  (dashboard-banner-logo-title						(:weight 'thin :height 320))
  (dashboard-heading								(:foreground grey1 :weight 'thin :height 170))
  (dashboard-no-items-face							(:foreground grey0))

  ;; all-the-icons
  (all-the-icons-dgreen							(:foreground blue))
  (all-the-icons-green							(:foreground blue))
  (all-the-icons-dpurple						(:foreground purple))
  (all-the-icons-purple							(:foreground purple))

  ;; evil
  (evil-ex-lazy-highlight           (:foreground bg-dim :background yellow :bold t))
  (evil-ex-substitute-matches       (:foreground red :strike-through t))
  (evil-ex-substitute-replacement   (:foreground aqua :bold t))
  (evil-search-highlight-persist-highlight-face (:background yellow))
  (evil-quickscope-first-face       (:foreground yellow :underline t))
  (evil-quickscope-second-face      (:foreground yellow :underline t))
  (evil-goggles-default-face        (:background yellow))
  (evil-goggles-join-face           (:foreground aqua))
  (evil-goggles-delete-face         (:background red))
  (evil-goggles-paste-face          (:background blue))
  (evil-goggles-indent-face         (:background grey0))
  (evil-goggles-set-marker-face     (:foreground red :background red))
  (evil-goggles-yank-face           (:foreground aqua :background aqua))

  (ansi-color-crust (:background bg-dim))

  (term (:background bg-dim :foreground fg))
  (term-color-blue (:background aqua :foreground aqua))
  (term-color-bright-blue (:inherit 'term-color-blue))
  (term-color-red (:background red :foreground red))
  (term-color-bright-red (:background orange :foreground orange))
  (term-color-yellow (:background yellow :foreground yellow))
  (term-color-bright-yellow (:background yellow :foreground yellow))

  (term-color-green (:background blue :foreground blue))
  (term-color-bright-green (:inherit 'term-color-green))

  (term-color-bright-crust (:background bg-dim :foreground red))
  (term-color-rosewater (:background fg :foreground fg))
  (term-color-bright-rosewater (:background orange :foreground orange))
  (term-color-cyan (:background aqua :foreground aqua))
  (term-color-bright-cyan (:background aqua :foreground aqua))
  (term-color-magenta (:background purple :foreground purple))
  (term-color-bright-magenta (:background purple :foreground purple))
  (term-underline (:background purple :foreground aqua))

  (vterm-color-crust (:background bg-dim :foreground bg-dim))
  (vterm-color-blue (:background aqua :foreground aqua))
  (vterm-color-cyan (:background aqua :foreground aqua))
  (vterm-color-green (:background blue :foreground blue))
  (vterm-color-magenta (:background orange :foreground orange))
  (vterm-color-yellow (:background yellow :foreground yellow))
  (vterm-color-red (:background red :foreground red))
  (vterm-color-rosewater (:background fg :foreground fg))

  (popup-face (:inherit 'tooltip))
  (popup-selection-face (:inherit 'tooltip))
  (popup-tip-face (:inherit 'tooltip))

  (anzu-match-1 (:foreground blue :background bg-dim))
  (anzu-match-2 (:foreground yellow :background bg-dim))
  (anzu-match-3 (:foreground aqua :background bg-dim))

  (anzu-mode-line		(:foreground bg-dim :background purple))
  (anzu-mode-no-match	(:foreground fg :background red))
  (anzu-replace-to		(:foreground yellow :background grey0))

  (ace-jump-face-background (:foreground grey0))
  (ace-jump-face-foreground (:foreground red :background bg-dim :bold t))

  (hydra-face-amaranth		(:foreground purple))
  (hydra-face-blue			(:foreground aqua))
  (hydra-face-pink			(:foreground red))
  (hydra-face-red			(:foreground red))
  (hydra-face-teal			(:foreground aqua))

  ;; Bookmarks
  (bm-fringe-face                           (:background red :foreground bg-dim))
  (bm-fringe-persistent-face                (:background red :foreground bg-dim))

  (centaur-tabs-active-bar-face				(:background bg-dim :foreground fg))
  (centaur-tabs-selected					(:background bg-dim :foreground fg :bold t))
  (centaur-tabs-selected-modified			(:background bg-dim :foreground fg))
  (centaur-tabs-modified-marker-selected	(:background bg-dim :foreground fg))
  (centaur-tabs-close-selected				(:inherit 'centaur-tabs-selected))

  (centaur-tabs-unselected					(:background bg-dim :foreground grey0))
  (centaur-tabs-unselected-modified			(:background bg-dim :foreground purple))
  (centaur-tabs-modified-marker-unselected	(:background bg-dim :foreground grey0))
  (centaur-tabs-close-unselected			(:background bg-dim :foreground grey0))

  (centaur-tabs-close-mouse-face			(:foreground red))
  (centaur-tabs-default						(:background bg-dim))
  (centaur-tabs-name-mouse-face				(:foreground aqua :bold t))

  (git-gutter:added                              (:foreground blue))
  (git-gutter:deleted                            (:foreground red))
  (git-gutter:modified                           (:foreground aqua))

  (goggles-added (:background blue))
  (goggles-changed (:background aqua))
  (goggles-removed (:background red))
  
  ;; Tree sitter highlighting
  (tree-sitter-hl-face:function                  (:inherit 'font-lock-function-name-face))
  (tree-sitter-hl-face:function.call             (:inherit 'tree-sitter-hl-face:function))
  (tree-sitter-hl-face:function.builtin          (:foreground red))
  (tree-sitter-hl-face:function.special          (:foreground fg :italic t :bold t))
  (tree-sitter-hl-face:function.macro            (:foreground blue))
  (tree-sitter-hl-face:function.label            (:foreground yellow))

  (tree-sitter-hl-face:method                    (:inherit 'tree-sitter-hl-face:function))
  (tree-sitter-hl-face:method.call               (:inherit 'tree-sitter-hl-face:method))

  (tree-sitter-hl-face:type                      (:inherit 'font-lock-type-face))
  (tree-sitter-hl-face:type.parameter            (:foreground purple :italic t))
  (tree-sitter-hl-face:type.argument             (:foreground grey0))
  (tree-sitter-hl-face:type.builtin              (:inherit 'font-lock-builtin-face))
  (tree-sitter-hl-face:type.super                (:foreground orange :bold t))
  (tree-sitter-hl-face:constructor               (:foreground aqua :weight 'semi-bold))

  (tree-sitter-hl-face:variable                  (:inherit 'font-lock-variable-name-face))
  (tree-sitter-hl-face:variable.parameter        (:inherit 'tree-sitter-hl-face:type.parameter :weight 'semi-bold))
  (tree-sitter-hl-face:variable.builtin          (:foreground aqua :italic t))
  (tree-sitter-hl-face:variable.special          (:foreground purple :italic t))
  (tree-sitter-hl-face:variable.synthesized      (:foreground red :italic t))
  (tree-sitter-hl-face:property                  (:foreground orange))
  (tree-sitter-hl-face:property.definition       (:inherit 'tree-sitter-hl-face:property :italic t))

  (tree-sitter-hl-face:comment                   (:inherit 'font-lock-comment-face))
  (tree-sitter-hl-face:doc                       (:inherit 'font-lock-comment-face))
  (tree-sitter-hl-face:string                    (:inherit 'font-lock-string-face))
  (tree-sitter-hl-face:string.special            (:inherit 'font-lock-string-face))
  (tree-sitter-hl-face:escape                    (:inherit 'font-lock-regexp-grouping-backslash))
  (tree-sitter-hl-face:embedded                  (:foreground aqua))

  (tree-sitter-hl-face:keyword                   (:inherit 'font-lock-keyword-face))
  (tree-sitter-hl-face:operator                  (:foreground grey1))
  (tree-sitter-hl-face:label                     (:foreground grey0))
  (tree-sitter-hl-face:constant                  (:inherit 'font-lock-constant-face))
  (tree-sitter-hl-face:constant.builtin          (:inherit 'font-lock-constant-face :weight 'normal))
  (tree-sitter-hl-face:number                    (:foreground yellow))

  (tree-sitter-hl-face:punctuation               (:foreground grey1 :weight 'semi-bold))
  (tree-sitter-hl-face:punctuation.bracket       (:foreground grey1 :weight 'semi-bold))
  (tree-sitter-hl-face:punctuation.delimiter     (:foreground fg :weight 'semi-bold))
  (tree-sitter-hl-face:punctuation.special       (:foreground grey1 :weight 'semi-bold))

  (tree-sitter-hl-face:case-pattern              (:foreground yellow))
  (tree-sitter-hl-face:keyword.compiler          (:foreground grey0 :bold t :italic t))

  ;; Custom for pinkus tree-sitter-swift
  (tree-sitter-hl-face:include                   (:foreground grey0 :italic t :bold t))
  (tree-sitter-hl-face:parameter                 (:foreground purple :italic t))
  (tree-sitter-hl-face:repeat                    (:foreground aqua))
  (tree-sitter-hl-face:boolean                   (:inherit 'font-lock-constant-face))
  (tree-sitter-hl-face:keyword.return            (:inherit 'tree-sitter-hl-face:keyword :italic t))
  (tree-sitter-hl-face:keyword.operator          (:foreground blue :bold t))
  (tree-sitter-hl-face:keyword.function          (:inherit 'tree-sitter-hl-face:keyword))
  (tree-sitter-hl-face:conditional               (:inherit 'tree-sitter-hl-face:keyword :weight 'semi-bold))

  (swift-mode:preprocessor-keyword-face (:foreground fg :italic t))
  (swift-mode:property-access-face (:foreground grey1))
  (swift-mode:builtin-property-face (:foreground orange))
  (swift-mode:builtin-enum-case-face (:foreground aqua))
  (swift-mode:builtin-method-trailing-closure-face (:foreground aqua))
  (swift-mode:builtin-function-trailing-closure-face (:foreground aqua))
  (swift-mode:function-call-face (:foreground red))

 ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide 'everforest-dark-hard-theme)
;;; everforest-dark-hard-theme.el ends here
