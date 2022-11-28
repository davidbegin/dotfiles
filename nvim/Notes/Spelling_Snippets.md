# Spelling_Snippets


GNU/Linux

:help iab
:help abbreviations

Examples of strings that cannot be abbreviations: "a.b", "#def", "a b", "_$r"

An abbreviation is only recognized when you type a non-keyword character.
This can also be the <Esc> that ends insert mode or the <CR> that ends a
command.  The non-keyword character which ends the abbreviation is inserted
after the expanded abbreviation.  An exception to this is the character <C-]>,
which is used to expand an abbreviation without inserting any extra
characters.

---

There are three types of abbreviations::

full-id	  The "full-id" type consists entirely of keyword characters (letters
	  and characters from 'iskeyword' option).  This is the most common
	  abbreviation.

	  Examples: "foo", "g3", "-1"

end-id	  The "end-id" type ends in a keyword character, but all the other
	  characters are not keyword characters.

	  Examples: "#i", "..f", "$/7"

non-id	  The "non-id" type ends in a non-keyword character, the other
	  characters may be of any type, excluding space and tab.

	  Examples: "def#", "4/7$"

