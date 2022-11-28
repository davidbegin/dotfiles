# Cpoptions

## Begin's Options

cpoptions=aABceFs_

a	When included, a ":read" command with a file name
  argument will set the alternate file name for the
  current window.

A	When included, a ":write" command with a file name
  argument will set the alternate file name for the
  current window.

B	A backslash has no special meaning in mappings,
  abbreviations, user commands and the "to" part of the
  menu commands.  Remove this flag to be able to use a
  backslash like a CTRL-V.  For example, the command
  ":map X \<Esc>" results in X being mapped to:
    'B' included:	"\^["	 (^[ is a real <Esc>)
    'B' excluded:	"<Esc>"  (5 characters)

c	Searching continues at the end of any match at the
  cursor position, but not further than the start of the
  next line.  When not present searching continues
  one character from the cursor position.  With 'c'
  "abababababab" only gets three matches when repeating
  "/abab", without 'c' there are five matches.

e	When executing a register with ":@r", always add a
  <CR> to the last line, also when the register is not
  linewise.  If this flag is not present, the register
  is not linewise and the last line does not end in a
  <CR>, then the last line is put on the command-line
  and can be edited before hitting <CR>.

F	When included, a ":write" command with a file name
  argument will set the file name for the current
  buffer, if the current buffer doesn't have a file name
  yet.  Also see |cpo-P|.

s	Set buffer options when entering the buffer for the
  first time.  This is like it is in Vim version 3.0.
  And it is the default.  If not present the options are
  set when the buffer is created.

_	When using |cw| on a word, do not include the
  whitespace following the word in the motion.
