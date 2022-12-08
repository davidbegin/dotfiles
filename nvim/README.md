
\ \   / (_)_ __ ___       | | ___  _   _ _ __ _ __   __ _| |
 \ \ / /| | '_ ` _ \   _  | |/ _ \| | | | '__| '_ \ / _` | |
  \ V / | | | | | | | | |_| | (_) | |_| | |  | | | | (_| | |
   \_/  |_|_| |_| |_|  \___/ \___/ \__,_|_|  |_| |_|\__,_|_|


## Current Keymaps Working on

<leader>ch -> Search cheat.sh

<leader>dn diagnostic.goto_next()
<leader>dp diagnostic.goto_previous()
<leader>da lsp.buf.code_action()
<leader>gd lsp.buf.definition()

<leader>vv Search Vim Config Files

## TODO

https://github.com/watchexec/cargo-watch

## Current Tip

Tmux Moving:
    -> CTRL-b n
    -> CTRL-b p
    -> CTRL-b l    | Last window
    -> CTRL-b 0..9 | Go to that window

## Rust Workflow

- cargo check
- cargo build
- show me errors from compiling

- How do we run the default make command???
    :Make
        -> Does this come from Vimux???
        -> So that run it, and it pauses
            -> Do we have a shortcut?
        -> :Make! is async and adds it to quickfix
        -> How do we pull up quickfix list???

MAYBE / Looks like Nope :(
```
<leader>t -> make and store errors in QuickFixlist
<leader>qf -> Telescope for QuickFixlist errors
<leader>q -> Telescope for QuickFixlist errors



nnoremap <silent><leader>ls :lua require'telescope.builtin'.loclist{}<CR>
```

- We Might be Close
    - How do we use Cheat Sheet???
    - What are our Top Shortcuts????

We need to figure out the right workflow

We also need to just be moving around our Tmux, and Project better in General
So we should pay real attention

## Rust TODOs

- Add Rust Snippets
    -> println!("")

LSP code action, which can suggest imports
    - imports
    - we want it how go works ideally

- rust_analyzer has a goto_definition
    - we are using gr right now

## Neovim Configuration Setup

Dotfiles

located at .config/dotfiles

Using GNU Stow, put them in the correct home

we have `init.vim` at the root with some basic options

we also have `plug_init.vim` at the root loading all out plugins
this file is loaded in `init.vim`

also `init.lua` is loaded in `init.vim`
this loads out lua based configuration

## Twitch Integration

Terminal:

```bash
beginbot hello
beginchat // reads chat
```

What's it's calling underneath

```bash
python /home/begin/code/chat_thief/beginbot.py $all_args

python /home/begin/code/chat_thief/beginchat.py $all_args
```

How to use it in Vim

```vim
<leader>tw // Send to Twitch
<leader>tr
    p -> to paste in vim
```

---

## Habits

Use gv to select stuff
    - WHAT DOES gv DO???

CTRL-Y, instead of Enter completion

----

## TODO

- Update dotfiles
    - Have to clean-up everything

- Browser behind Vim???
    - What do you mean?
        - You can't do that!
        - You want it next to to it maybe

- Markdown in Vim
    - Move between anchors in Markdown document?
    - https://github.com/preservim/vim-markdown#follow-named-anchors

- bind e switch-client -l
    - add this to your tmux conf and you can use prefix+e to switch to last session

---------------------------------------------------------

## Workspaces

- Where is the BeginWorld™ workspace?
    - How are dotfiles setup???

## Issue

Spawning language server with cmd: `jedi-language-server` failed. The language server is either not installed, missi
ng from PATH, or not executable.

## TODO

- Shortcut for %!python -m json.tool
  - <leader js>

- Go down to next line only at beginning?

## Quickfix

["<C-q>"] = actions.send_to_qflist,
  - This is in telescope!!!

:Copen

nnoremap <silent><leader>q :lua MakeAndPopulateQFList()<CR>
nnoremap <silent><leader>ls :lua require'telescope.builtin'.loclist{}<CR>

## What are we working on this week?

- Snippets
- Ctrl-D Ctrl-U
- better completion usage in terms of choosing
- telescope usage better
- <leader>ch
  - Cheatsheet

## Questions

- What is cmp?
- How do we setup custom Snippets?
  - I need a `json:""`
- How do make clicking links and going back like in Vim

-----

## Vim Wiki

:help vimwiki

## Vim Desires

- Control when things are popping up more fine-grained:
  - Only pop-up when we type Tab, or after 2 characters

- Look into my scrolloff settings more

## Tmux Desires

- Get a command to open new TMux window in same DIR

## Go Vim Desires

- How do I open the corresponding Go or Test file?

```
  * Switch between `file.go` and `file_test.go` code with |:GoAlternate|.

```

## Teej Teaches

teej_dv: you could have done ":noautocmd w" anyway, you nub

---

### TODO

- Make a command to get single last chat message

## Visual Block

<CTRL-v>
What is carl talking about???
V >

## Desires

Extract out only whats in the ""'s


```
["force_count"]   = forces.force_count,
["create_force"]  = forces.chat_create_force,
["possess"]       = forces.possess,
["new_character"] = forces.new_character,
["current_force"] = forces.current_force,
["trade"]         = forces.trade_chests,
```

## Vim Day wants

How do I add - or * to the front of a long list of things

## Vim day Ponderings

- If theres 2 vim plugins doing roughly the same thing:
  - 1 in Lua
  - 1 in Vimscript
  - Teej Method: write your own

....how likley is it the lua version is faster??
  - ....very likely???

asbjornhaland: what? I just read something, but heard my name in the background

## Current Vim Day

curl cht.sh/lua

@ThePrimeagen Have you tried the downloaded version of cht.sh? It caches the files so there is no ping time

## Potential Vim

- case ignore and not
- case insensitive searchs in Telescope
- Pulling the selected word into various places:
  -> CTRL-R CTRL-/
    -> works fine for :%s/
    -> doesn't work pulling a search to telescope

## Begin's Weekly Habit

- Control-n + CTRL-p
  - Stay in insert mode in telescope

Point of a Fuzzy finder: move to something quickly
  -> you press CTRL-n or CTRL-p more than 3 times,
    YOU ARE NOT FUZZY FINDING PROPERLY - teej_dv

- When searching, don't type spaces or slashes when searching for files:
  -> it matches more heavily waited to the exact file name
  foo/bar/begin.go
  f b begin.go

i_CTRL-X:

Whole lines                                | CTRL-L |
keywords in 'thesaurus', thesaurus-style   | CTRL-T |
keywords in 'dictionary'                   | CTRL-K |
File names                                 | CTRL-F |
Vim command-line                           | CTRL-V |
Spelling suggestions                       | s      |

## Finding Keymaps

Locations:
  - filetype specific
  - Everywhere
  /.config/nvim/after/ftplugin/go.vim
  /.config/nvim/after/filetypesplugin/go.vim

How to find where
  - :map <c-u>
  -> :verbose map

## Dadbod

- I am using TPopes Dadbod to connect to my Postgresql database
  in vim, my keymapping is only available in Go.

## Begin Vim Desires

- I'm sucking at pulling the selected word into various
  -> CTRL-/
    -> works fine for :%s/
    -> doesn't work pulling a search to telescope

"/p -> paste last search

...is this only because of my hlsearch settings

...easiest way to selected word into telescope search

How can I automatically remove this /<
\<TelescopeBorder\>

hi TelescopeBorder guifg=#5eacd3

n  >p          & :<C-U>call <SNR>52_putline(v:count1 . ']p', 'Below')<CR>>']
n  >P          & :<C-U>call <SNR>52_putline(v:count1 . '[p', 'Above')<CR>>']

:verbose map
:verbose map

## Vim Questions

anafromain: for those using nvim-lsp, does anyone know how i can change the path of qhere the language server is looked for?

## 2 Options

- I: Get better at typing/spelling
- II: Make our editor fix our mistakes before we make them
  -> it becomes harder to leave our editor.
  ....I don't leave vim.

## Telescope Desires

- How do I repeat the last Telescope search

## Weekly Practicing

- CTRL-D / CTRL-U
- CTRL-F / CTRL-G
- } -> jump to next empty-line

- Using new OSL Layer Switch
- Unimparired:
  -> [<Space>                Add [count] blank lines above the cursor.
  -> ]<Space>                Add [count] blank lines below the cursor.
  -> [e                      Exchange the current line with [count] lines above it.
  -> ]e                      Exchange the current line with [count] lines below it.
  -> [f                      Go to file preceding current one alphabetically
  -> ]f                      Go to the file succeeding the current one
  -> [n                      Go to the previous SCM conflict marker or diff/patch hunk.  Try d[n inside a conflict.
  -> ]n                      Go to THE next SCM conflict marker or diff/patch hunk.  Try d]n inside a conflict.
  -> >p*                     Paste after linewise, increasing indent.
  -> yoi	                   'ignorecase'
  -> yos	                   'spell'
  -> yow	                   'wrap'
-> search and replace w/ `/search cgn .`
  -> :gn


## Don't forget

- I want to live-grep in a set of files
  -> dotfiles
  -> <leader>vs -> search in dotfiles

## Vim Needs

- Jump a full page down, putting cursor back at the top

## init.lua versus .vimrc

- various configuration is nicer in init.lua,
  instead of the Escape madness of vimscript

## mr.o.avi tips:

Did you know that `gi` puts you in insert mode in the last place where you exited insert mode?

## How do you generate what to work on for Vimday

- You can work a on feature Vim-Golf style

## Maybe Vim Day

// We could end our predicate methods with QuestionMark
// have Neovim replace the word QuestionMark
// with a QuestionMark
// Then we can fake Predicates in Go
// teej_dv: Hahahaha just use conceal?
// teej_dv: yes, you can do it

https://github.com/ElPiloto/sidekick.nvim

teej_dv: someone make him read ":help matchadd" for the redemption

## Explore Vim Diff

:windo diffthis
deepredsky1: i often do `windo diffthis` to see different between two windows side by side


## VIM Fear

- I am doing LSP renames, and I am afraid it's not renaming in some places
in my tests

## I don't know

- What do you use tabedit for?

## Maybe Vim Day

// We could end our predicate methods with QuestionMark
// have Neovim replace the word QuestionMark
// with a QuestionMark
// Then we can fake Predicates in Go
// teej_dv: Hahahaha just use conceal?
// teej_dv: yes, you can do it

https://github.com/ElPiloto/sidekick.nvim

teej_dv: someone make him read ":help matchadd" for the redemption

## Explore Vim Diff

:windo diffthis
deepredsky1: i often do `windo diffthis` to see different between two windows side by side

## Keyboard layer switching options

- toggle
- switch and hold
- "space-cadent single key style"

I use MO -> Should I use OSL?
  -> I could make one MO and one OSL

## Hot Tip

> mroavi: Hey @beginbot .. are you aware of the gn workflow to rename strings?
> mroavi: I discovered it recently and I'm loving it.
> mroavi: Try this: Search for a word: `/old` then change the next
search match with `cgn` and type the new word. Then press `.` to perform the change one by one.

:%s/chad/alpha/gc

/chad
cgn
alpha
.

mroavi: Here is my only abbreviation in my init.vim: cnoreabbrev H vert bo h It opens the help in a vertical split.
mroavi: `cnoreabbrev H vert bo h`

## Potential Day

- Snippets
- Removing Vim-go or Customizing
- https://vimawesome.com/plugin/unimpaired-vim
- Repeat of Go debugging

## Spelling

after/plugin/spelling.vim

## File Managers

- netrw    -> Builtin
- nerdtree -> very popular, very slow, begin used for years
- chadtree -> https://github.com/ms-jpq/chadtree

## Small Plugins I Like

- Tabularize

## Discussion

- Where do you put file specific vim configuration?

absenth762: I just want to set simple things like... if file extension is .py or .yml. or .yaml then <tab> = 2 spaces. Then I realize tab should just send 2 spaces always anyway.
stupac62: @absenth762 you can put a python.vim inside of nvim/after/ i think and set settings there
stupac62: for the file extension specific ones
absenth762: @stupac62 ping me on one of the discords later.

## The worst Begin is doing

- Changing my font-size to diagnostics

:copen
<leader>qf -> opens up quickfixlist with telescope

## Vim Day


What does this mean??

```
cpoptions=aABceFs_
```

## Cpoptions Game?

Game 1: name you Cpoptions?

Game 2: identify what all of them do?








I want to meet someone who doesn't use B in cpopotions

-> to be able to get CTRl-V like behavior from \

- Quellus: hot take: I've never used B but that's due to a lack of proper education

Do I want to use f?
		- f	When included, a ":read" command with a file name
			argument will set the file name for the current buffer,
			if the current buffer doesn't have a file name yet.

3.0???? What the heck??? What do I want??k
  -s	Set buffer options when entering the buffer for the
    first time.  This is like it is in Vim version 3.0.
    And it is the default.  If not present the options are
    set when the buffer is created.

IS THIS WHAT I WANT???
  _	When using |cw| on a word, do not include the
    whitespace following the word in the motion.


## What is this for?

To help organize and focus my current vim efforts.
Listing what I am researching, annoyed with, working on, feeling unsure about etc.

## Vim Confessions

I use :vs to split
then asbjorn told me about CTRL-w v
....but prime uses <leader>pv
....and I messed with it, switched  it to dirvish


## Habits We Are Trying to Build

- Ctrl-w v -> vertical split

:help terminal-emulator
- delve
  Set breakpoint  <leader>bp
  Run DlvDebug    <leader>db
  Run DlvTest     <leader>dt

- Moving around:
  {} -> to scan up and down

- % for matching thang
  (Hello There)
  {Hello There}
  [Hello There]

- H M, L more
  - H -> Top
  - M -> Middle
  - L -> Bottom
- zt / zb

- use c more
  - cw
  - C

- CTRL-O and CTRL-I -> Hop forward and back

- f/F -> ; to repeat

- $ -> end   Layer-1(s)
- ^ -> front Layer-1(x)
- _ -> front Layer-1(-)

]s (vs) -> Next Misspelling (Layer-1+)
[s (cs) -> Next Misspelling (Layer-1+v)

mr_villescas: Did you know that in insert mode you can trigger suggestions for a spelling mistake with `CTRL-X S` .. this is super handy!


### Indenting

Normal/Visual Mode:
- >
- <

Insert Mode:
- <CTRL-t> <- indent
- <CTRL-d> <- dedent

This still feels like I'm not powerful/natural enough

### Vim Commentary

gcap/gcip -> comment out outer/inner paragraph
gcc       -> comment out line

### Surround

- CTRL-S vim-surround shortcuts
  - b -> )
  - B -> }
  - r -> ]
  - a -> >
  - " -> ""
  - Insert Mode:
    - You don't need this
    - CTRL-Gs B -> {}
- https://cheatography.com/mutanclan/cheat-sheets/vim-tpope-vim-surround/

### Dirvish

  - - current directory
  - a or v -> open in new split
  - %
  - Shdo
    - x to mark a file
    - :Shdo! to operate on the files
    - Z! to execute the command
  - I am ignorant of all the ways of creating files, just in vim.
  - When do you need to !mv and when can you just move

### QuickFixlist

<leader>t -> make and store errors in QuickFixlist
<leader>qf -> Telescope for QuickFixlist errors
:cp -> navigate to prev error
:cn -> navigate to next error
:cl -> list all errors
:cbe
  - 2cbe
    -> go to error below
:cabo
  - 2cabo
    -> go to error above

:cf -> take me to the next error

How do I navigate to the next quickfix error, wrapping around in a file

## Testing in Go

```
map <Leader>gj :VimuxCloseRunner<CR>
map <leader>gn :GolangTestFocused<CR>
map <leader>gm :GolangTestCurrentPackage<CR>
map <leader>gk :call VimuxRunLastCommand()<CR>

nnoremap <buffer> <leader>t :Make!<CR>
nnoremap <buffer> <leader>y :Dispatch make test<CR>
  -> sometimes these errors aren't populating
```

- running individual tests/file tests
  - Vimux and Vimux-GO (Really don't need)
    -> to run focused tests in a vertical split
- Running the whole test-suite
  -> vim-dispatch
    -> runs in a horizontal Tmux split
- we compile with dispatch inthe background, and populate our quickfix list
  with errors

## Desires

## Annoyed with

- Redoing
  - Sometimes I accidently deleted text and
    it's not in my undo
    CTRL-R -> already at newest change

:help undo-redo

## Plugins to checkout

- https://github.com/tpope/vim-tbone
- https://github.com/tpope/vim-dispatch
- https://github.com/tpope/vim-tbone
- https://github.com/tpope/vim-abolish
- https://github.com/tpope/vim-speeddating
- https://github.com/tpope/vim-projectionist
- https://github.com/tpope/vim-dadbod
  - For Postgresql
- https://github.com/tpope/vim-fugitive
  - Versus lazygit


## Vim Insults / Vimsults

- Shutup bwipe

## General Vim Philosophy

- I avoid adding lots of things on save
  ....since I save soooo much

## Tmux (NOT VIM!)

- prefix-$ rename Session
- prefix-!
  - Break out Window from Pane

## Explore

```
theprimeagen: fun! TrimWhitespace() let l:save = winsaveview() keeppatterns %s/\s\+$//e call winrestview(l:save) endfun
```

theprimeagen: Then put your cursor on it and type gF
~/.config/dotfiles/nvim/plug_init.vim:30
Try these commands on this path:
  - gf
  - gF
  - CTRL-w f -> open in a split
  - CTRL-w F -> open in split on exact line

dzintars_dev: Begin... can you tell bit more about :mksession workspace.vim? Do you use it? How? Is it worth?

dzintars_dev: today tried to capture tmux layout in the script. Turns out i should set the window size explicitly with tmux new -s "$SESSION" -n 'Code' -d -x "$(tput cols)" -y "$(tput lines)"

## This to explore


smokingears: Hey begin you ever set the scrolloff command to keep your cursor in the middle?
stupac62: yes for goyo mode
stupac62: set scrolloff=999
stupac62: i thought you had it set like that for goyo

help setreg

---

## Confused Begin

- My debug workflow

- https://github.com/ThePrimeagen/harpoon

## Bounty

---

delete -> letter

## Go Vim Ponderings

- With a heavy interface-based system:
  - sometimes go-to-definition, is not what I want
    ...and I end up just searching, instead of thinking
    about the language itself.

    ....I find myself, needing some different LSP shortcuts:
      -> show implementation
      -> show all implementors of interface

## Questions

wantyapps: @beginbot THIS IS VIMDAY! I FORGOT! So I have a question for you! How do you set color schemes in lua without "vim.cmd()"?

## How to Write vim-plugin Docs

- "Obscure-Other-Software-No-One-Has-Heard-Of"-Like Type-of-Plugin

Someone build a quick generator of this

http://oremacs.com/swiper/

Custom Mappings for pickers:
  - inside of begin.tele

  attach_mappings

for dirvish style mappings



## Updating Your Telescope

- I want to adjust the file-browser size of telescope for file_browser
- I want only display filenames, no ls -la info for files


## Web3 Desire

- Download contract from etherscan real quick

