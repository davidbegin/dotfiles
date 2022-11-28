# Arg Location Quickfix

:Make [arguments]       Using the current |:compiler| settings, dispatch a
                        build in the foreground.  Adapter strategies vary, but
                        the goal is visibility without stealing focus.  When
                        the build is complete, load the results into the
                        |quickfix| list and call |:cwindow|.  This command is
                        preferred for shorter tasks like "build this file."

:help quickfix-error-lists
3. Using more than one list of errors			*quickfix-error-lists*

:[count]lhi[story]	Show the list of location lists, otherwise like

## QuickFixlist

<leader>t -> make and store errors in QuickFixlist
<leader>qf -> Telescope for QuickFixlist errors

:cp
:cn


:cl -> list all errors

:cbe
  - 2cbe
    -> go to error below
:cabo
  - 2cabo
    -> go to error above


How to hop to next quickfix error

## List of Lists

- quickfix
- location
- arglist
  3. The argument list				*argument-list* *arglist*

vi -> arglist
vim -> buffer

|:arglocal|.


### I Don't use this
You can use the argument list with the following commands, and with the
expression functions |argc()| and |argv()|.  These all work on the argument
list of the current window.

https://github.com/romainl/vim-qf
