---
title       : Emacs + ESS + AutoComplete
subtitle    : R-user meeting March 2015
author      : Jean Monlong
job         : 
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
+ Before mice and Windows/Macintosh computers.

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
  + Example R, Perl, Latex, Markdown.
  + Indentation, text highlight, functions.
+ Customizable.
+ Keyboard control or GUI.

---

## Init file

One principal file to customize Emacs: `.emacs`.

```{elisp}
;; disable startup screen
(setq inhibit-splash-screen t)

;; turn the blinking off
(blink-cursor-mode 0)

;;; turn off the tool-bar (<=0 off, >0 on)
(tool-bar-mode 0)

;; Font
(set-default-font "Consolas 14")
```

---

## Emacs general shortcuts

`M-/` and `C-M-/` autocomplete from the words present in open buffers.

`C-s`, `C-r` for forward/reverse search and `M-%` to replace.

`C-x 1`, `C-x 2`, `C-x 3` to split/merge buffers. `C-x b` and `C-x o` to switch/change buffers.

---

## ESS

Using imenu functionality, jump to function definition using `M-o`.

Get information about an object with `C-c C-d C-e` and additional `C-e` to get extra information.

Smart underscores.

Comment/uncomment a region with `M-;`.

Get help on a function with `C-c C-v`.

### Eval code

`C-c C-f` to eval a function.

---

## Autocomplete

Commands


