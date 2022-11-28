# Telescope.md

<C-n>/<Down>	Next item
<C-p>/<Up>	Previous item
j/k	Next/previous (in normal mode)
H/M/L	Select High/Middle/Low (in normal mode)
'gg/G'	Select the first/last item (in normal mode)
<CR>	Confirm selection
<C-x>	Go to file selection as a split
<C-v>	Go to file selection as a vsplit
<C-t>	Go to a file in a new tab
<C-u>	Scroll up in preview window
<C-d>	Scroll down in preview window
<C-/>	Show mappings for picker actions (insert mode)
?	Show mappings for picker actions (normal mode)
<C-c>	Close telescope
<Esc>	Close telescope (in normal mode)
<Tab>	Toggle selection and move to next selection
<S-Tab>	Toggle selection and move to prev selection
<C-q>	Send all items not filtered to quickfixlist (qflist)
<M-q>	Send all selected items to qflist

----

https://termux.com/

---

- don't leave insert mode in Telescope
stupac62: :h ins-completion

---

## Step 1

Run :Make! which runs :make with Tmux
in the background
populates the Errorlist/file
<leader>t

## Step 2

Run :cg to read the errorfile
and populate the Quickfixlist with it
THEN run Telescope against the QuickFixlist
<leader>q

How do I sent search results to my quickfixlist?


## Step 3

Fix Error

## Step 4

Repeat


## Debugging Workflow

Set breakpoint <leader>bp
Run DlvDebug   <leader>db
Run DlvTest <leader>dt
Clear Breakpoints <leader>cl

l or ls -> list current location
locals  -> show locals

p request
or print request
























:caddf

:make uses makeef for error
:cf uses errorfile

- When I call :make
I want :caddf also

:cg[etfile] [errorfile]					*:cg* *:cgetfile*

## Open Questions

- What is the diff between errorfile and quickfixlist???

we are only seeing errors in the QFL, when we are in the file
that contains the errors


I want :make to use the errorfile, used by :cf

```
<leader>T -> compile our program

:copen -> look at the quickfixlist

:cf    -> go to last error in errorfile

<leader>qf -> opens up quickfixlist with telescope
```

When we have multiple errors, we compile to
populate our quickfixlist, we use
<leader>qf to show all quickfixlist errors with Telescope

We navaigate to the error and fix it
recompile
and use <leader>qf
its showing the old error
