;;; Bootstrap
(require 'package)
(setq package-enable-at-startup nil)
(setq use-package-always-ensure t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; nyan-mode
(use-package nyan-mode)
(nyan-mode)
(setq nyan-wavy-trail nil)

;;; emms
(use-package emms)

;;; helm
(use-package helm)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "M-x") #'helm-M-x)

;;; projectile
(use-package projectile
  :config (projectile-global-mode t))
(use-package helm-projectile)

;;; magit
(use-package magit)

;;; org-mode
(use-package org)
(use-package org-bullets)

;;; git-timemachine
(use-package git-timemachine)

;;; Monokai theme
(use-package monokai-theme)

;;; better-defaults
(use-package better-defaults)

;; company
(use-package company)

;; dired+
(use-package dired+)

;; web-mode
(use-package web-mode)

;; csharp-mode
(use-package cl)
(use-package csharp-mode)

;; markdown
(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(setq inhibit-startup-screen t)

(show-paren-mode t)

(setq-default indent-tabs-mode nil)

(global-linum-mode t)

(global-auto-revert-mode 1)

(setq-default show-trailing-whitespace 1)

(setq visible-bell nil
      require-final-newline t
      mouse-yank-at-point t)


