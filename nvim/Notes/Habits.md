# Habits

- CTRL-D / CTRL-U

## Unimpaired

>ap        - indent paragraph
- <CTRL-t> - indent
- <CTRL-d> - dedent
[<Space>   - Add [count] blank lines above the cursor.
]<Space>   - Add [count] blank lines below the cursor.
[e         - Exchange the current line with [count] lines above it.
]e         - Exchange the current line with [count] lines below it.
[f         - Go to file preceding current one alphabetically
]f         - Go to the file succeeding the current one
yow        - Toggle	'wrap'

### Dirivsh Shdo Workflow

- Editing Files:
  - x to add files to arglist
  - :Shdo! to edit those files
  - Z! execute the script on those files

- mark some files
- record a macro
- run the script

- Editing the macro (let)

:let @a="CTRL-a"

Quick rename of a file
yy !mv CTRL-v Ctrl-v (edit the name an press enter)

## Quickfix

["<C-q>"] = actions.send_to_qflist,

:Copen
