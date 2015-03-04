---
title       : Emacs + ESS + AutoComplete
subtitle    : R-user meeting March 2015
author      : Jean Monlong
job         : PhD Candidate McGill University
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Brief history of Emacs, ESS and AutoComplete

### Emacs

+ First written in 1976 by Richard Stallman.
+ First software of the GNU project.
+ Before mice, Windows or Macintosh computers.

### Emacs Speaks Statistics

+ Late 90s
+ Merge of S-mode, SAS-mode and Strata-mode

### Autocomplete

+ First release around 2009.

---

## Why Emacs ?

+ Multiplatform powerful text editor.
+ Free and Open Source.
+ Modes for different programmation languages and file types
  + e.g. R, Latex, Markdown, Perl.
  + Indentation, text highlight, functions.
+ Customizable.
+ Keyboard control or GUI.

---


### Installation
+ Linux : `apt-get install emacs24`
+ OSX/Windows : package from [Vincent Goulet](http://vgoulet.act.ulaval.ca/en/emacs)

### Configuration file

One file to customize Emacs: `~/.emacs`.

```{elisp}
;; Disable startup screen
(setq inhibit-splash-screen t)
;; Load path definition
(add-to-list 'load-path "~/.emacs.d/lisp/")
;; Font
(set-default-font "Consolas 14")
```

---

## My favorite Emacs features

Autocomplete from words in buffers : `M-/`

Forward/reverse search : `C-s`, `C-r`

Replace : `M-%`

Split/merge buffers : `C-x 1`, `C-x 2`, `C-x 3`

Switch/change buffers : `C-x b` and `C-x o`

Undo : `C-_`

---

## ESS and other packages

### ESS installation
+ Linux : `apt-get install ess`
+ OSX/Windows : included in Vincent Goulet package.

### Adding simple packages

1. Download a `.el` file.
2. Put `.el` file in load path (e.g. `~/.emacs.d`)
3. Add `(require 'the-el-file.el)` to `~/.emacs` file.


---

### Eval code

`C-c C-n` to eval a line.

`C-c C-p` to eval a paragraph.

`C-c C-r` to eval a region.

`C-c C-f` to eval a function.

### Other features

`C-c C-d C-e` to get information about R object (additional `C-e` for extra information)

`C-c C-v` to open a function's manual. 

`M-;` to comment/uncomment a region.

---

### Imenu
**imenu** [`imenu-anywhere.el`](https://github.com/vspinu/imenu-anywhere)

Jump to function definition : `M-o`

### Smart underscores
[`ess-smart-underscore.el`](http://www.emacswiki.org/emacs/ess-smart-underscore.el)

When pressing `_`, insert `_` or `<-` depending on context.

---

## Autocomplete

### Installation

1. Download and uncompress [`auto-complete-1.5.0.tar.gz`](https://github.com/auto-complete/auto-complete).
2. In Emacs do: `M-x load-file RET`.
3. Enter path to install file : `auto-complete-1.5.0/etc/install.el`.
4. Update `.emacs` with

```{elisp}
(require 'auto-complete-config)
(ac-config-default)
```

---

## Autocomplete dictionnaries

+ Words in the buffer
+ Object defined in R.
+ Functions in R.
+ Arguments of the functions.
+ File paths.

---

## Configuration

```{elisp}
(setq ac-auto-start nil)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(define-key ac-completing-map [return] nil)
(setq ac-quick-help-delay 0.1)
```

---

## Other softwares

### Rstudio

Complete IDE for R development.
It has most of ESS and AutoComplete features/

### Vim

I don't know enough so no comment.

---

## Conclusions

Emacs is powerful.

Emacs is configurable.

It has extensive features for R development.

But not only R.


