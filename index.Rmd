---
title       : R user meeting March 2015
subtitle    : Emacs + ESS + AutoComplete
author      : Jean Monlong
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Brief history

+ First written in 1976 by Richard Stallman.
+ First software of the GNU project.
+ Before
  + mice
  + Windows or Macintosh computers

---

## Why Emacs ?

+ Multiplatform powerful text editor.
+ Free and Open Source.
+ Extensive set of modes for different programmation languages and types of files (e.g. R, Perl, Latex, Markdown)).
  + Indentation, text highlight, functions.
+ Customizable.
+ Keyboard control or GUI.

---

## Init file

One principal file to customize Emacs: `.emacs`.

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

---

### Eval code

`C-c C-f` to eval a function.

---

## Autocomplete




