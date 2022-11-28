# Neogit

Tab -	Toggle diff

1, 2, 3, 4 -Set a foldlevel

$	Command history
s	Stage (also supports staging selection/hunk)
S	Stage unstaged changes
<C-s>	Stage Everything
u	Unstage (also supports staging selection/hunk)
U	Unstage staged changes
c	Open commit popup
L	Open log popup
p	Open pull popup
P	Open push popup
x	Discard changes (also supports discarding hunks)
<C-r>	Refresh Buffer
<C-C><C-C>	Commit (when writing a commit message)

" Neogit
hi def NeogitDiffContextHighlight ctermbg=None guibg=None


## Problems

- can't navigate to to hunk
- can't return to neogit after navigating to file
