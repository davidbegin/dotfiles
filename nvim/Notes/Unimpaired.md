# Unimpaired

[<Space>                Add [count] blank lines above the cursor.
]<Space>                Add [count] blank lines below the cursor.

[e                      Exchange the current line with [count] lines above it.
]e                      Exchange the current line with [count] lines below it.

[f                      Go to file preceding current one alphabetically
]f                      Go to the file succeeding the current one

[n                      Go to the previous SCM conflict marker or diff/patch
                        hunk.  Try d[n inside a conflict.

]n                      Go to the next SCM conflict marker or diff/patch hunk.
                        Try d]n inside a conflict.

*>p*    Paste after linewise, increasing indent.

	*yoi*	'ignorecase'
	*yos*	'spell'
	*yow*	'wrap'
	yol	  'wrap'

---



*>P*    Paste before linewise, increasing indent.
*<p*    Paste after linewise, decreasing indent.
*<P*    Paste before linewise, decreasing indent.
*=p*    Paste after linewise, reindenting.
*=P*    Paste before linewise, reindenting.
/
---

On	Off	Toggle	Option


*[od*	*]od*	*yod*	'diff' (actually |:diffthis| / |:diffoff|)

The mnemonic for y is that if you tilt it a bit it looks like a switch.

---

Played a Game at Work:

  - Post-Apocolyptic tech choices
    - One config language allowed in some sort of Raod-Warrioir like scenario
        -> XML is the best config language, if you can only get one option
           and your goal is survival

---

[x{motion}              XML encode.
[xx                     <foo bar="baz"> => &lt;foo bar=&quot;baz&quot;&gt;
{Visual}[x


---

---

Begin Issues

- don't like square bois
  -> The location of the square bois never feels right
  -> I use the 2nd layer, but often now I use vim-surround

(){}^[$([](){}()[](){}[](){}()[](){}()[]{(){}

What do you use the most in your life?
What do you use more than your keyboard

()
[]
{}

*[oh*	*]oh*	*yoh*	'hlsearch'

:noh

layer


CTRL-i -> [
CTRL-o -> ]

brandoncc_dev: I have square brackets bound to alt+i and alt+o on my kinesis. Then I have caps lock bound to alt. So I press caps lock + I for left square bracket.
greatest_lord: !me

---

There are mappings which are simply short normal mode aliases for commonly used ex commands.

layer-v, left go q

]q is :cnext.
[q is :cprevious.
]a is :next.
[b is :bprevious.

See the documentation for the full set of 20 mappings and mnemonics. All of them take a count.

There are linewise mappings. [<Space> and ]<Space> add newlines before and after the cursor line. [e and ]e exchange the current line with the one above or below it.

There are mappings for toggling options. [os, ]os, and yos perform :set spell, :set nospell, and :set invspell, respectively. There's also l (list), n (number), w (wrap), x (cursorline cursorcolumn), and several others, plus mappings to help alleviate the set paste dance. Consult the documentation.

There are mappings for encoding and decoding. [x and ]x encode and decode XML (and HTML). [u and ]u encode and decode URLs. [y and ]y do C String style escaping.

And in the miscellaneous category, there's [f and ]f to go to the next/previous file in the directory, and [n and ]n to jump between SCM conflict markers.

*[a*     |:previous|
*]a*     |:next|
*[A*     |:first|
*]A*     |:last|
*[b*     |:bprevious|
*]b*     |:bnext|
*[B*     |:bfirst|
*]B*     |:blast|
*[l*     |:lprevious|
*]l*     |:lnext|
*[L*     |:lfirst|
*]L*     |:llast|
*[<C-L>* |:lpfile|
*]<C-L>* |:lnfile|
*[q*     |:cprevious|
*]q*     |:cnext|
*[Q*     |:cfirst|
*]Q*     |:clast|
*[<C-Q>* |:cpfile| (Note that <C-Q> only works in a terminal if you disable
*]<C-Q>* |:cnfile| flow control: stty -ixon)
*[t*     |:tprevious|
*]t*     |:tnext|
*[T*     |:tfirst|
*]T*     |:tlast|
*[<C-T>* |:ptprevious|
*]<C-T>* |:ptnext|

                                                *[f*
[f                      Go to the file preceding the current one
                        alphabetically in the current file's directory.

                                                *]f*
]f                      Go to the file succeeding the current one
                        alphabetically in the current file's directory.

                                                *[n*
[n                      Go to the previous SCM conflict marker or diff/patch
                        hunk.  Try d[n inside a conflict.

                                                *]n*
]n                      Go to the next SCM conflict marker or diff/patch hunk.
                        Try d]n inside a conflict.

LINE OPERATIONS                                 *unimpaired-lines*

                                                *[<Space>*
[<Space>                Add [count] blank lines above the cursor.

                                                *]<Space>*
]<Space>                Add [count] blank lines below the cursor.

                                                *[e* *v_[e*
[e                      Exchange the current line with [count] lines above it.

                                                *]e* *v_]e*
]e                      Exchange the current line with [count] lines below it.

OPTION TOGGLING                                 *unimpaired-toggling*

PASTING                                         *unimpaired-pasting*

These are experimental:

*>p*    Paste after linewise, increasing indent.
*>P*    Paste before linewise, increasing indent.
*<p*    Paste after linewise, decreasing indent.
*<P*    Paste before linewise, decreasing indent.
*=p*    Paste after linewise, reindenting.
*=P*    Paste before linewise, reindenting.

|]p|, |[p|, |[P|, and |]P| have also been remapped to force linewise pasting,
while preserving their usual indent matching behavior.

                                                *[op* *]op* *yop*
A toggle has not been provided for 'paste' because the typical use case of
wrapping of a solitary insertion is inefficient:  You toggle twice, but
you only paste once (YOPO).  Instead, press [op, ]op, or yop to invoke |O|,
|o|, or |0||C| with 'paste' already set.  Leaving insert mode sets 'nopaste'
automatically.

ENCODING AND DECODING                           *unimpaired-encoding*

Each of these operations has a map that takes a motion, a map that
targets [count] lines, and a visual mode map.  The linewise variant integrates
with repeat.vim.

Mnemonic: encoding always comes before decoding; "[" always comes before "]".

                                                *[x* *[xx* *v_[x*
[x{motion}              XML encode.
[xx                     <foo bar="baz"> => &lt;foo bar=&quot;baz&quot;&gt;
{Visual}[x

                                                *]x* *]xx* *v_]x*
]x{motion}              XML decode.  HTML entities are handled as well.
]xx
{Visual}]x

                                                *[u* *[uu* *v_[u*
[u{motion}              URL encode.
[uu                     foo bar => foo%20bar
{Visual}[u

                                                *]u* *]uu* *v_]u*
]u{motion}              URL decode.
]uu
{Visual}]u

                                                *[y* *[yy* *v_[y*
[y{motion}              C String encode.  Backslash escape control
[yy                     characters, quotation marks, and backslashes.
{Visual}[y

                                                *]y* *]yy* *v_]y*
]y{motion}              C String decode.
]yy
{Visual}]y

 vim:tw=78:et:ft=help:norl:
