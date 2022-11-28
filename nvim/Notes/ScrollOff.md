# Scrolloff

## Advice

mroavi: Start with a low number, and start increasing it if you like the feature.

## Do we like Scrolloff

- What are different scrolloff options
- Scroll Off Ya Scrub
  -> Teej has it at 10
  -> Moravi 5
  -> Stu/Prime 8
  -> /Prime 7
  -> xxsupercuberxx: i have 7
  -> stupac62: I use scrolloff=999 when goyo is active

						*'scrolloff'* *'so'*
'scrolloff' 'so'	number	(default 0)
			global or local to window |global-local|
	Minimal number of screen lines to keep above and below the cursor.
	This will make some context visible around where you are working.  If
	you set it to a very large value (999) the cursor line will always be
	in the middle of the window (except at the start or end of the file or
	when long lines wrap).
	After using the local value, go back the global value with one of
	these two: >
		setlocal scrolloff<
		setlocal scrolloff=-1
<	For scrolling horizontally see 'sidescrolloff'.

						*'scrollopt'* *'sbo'*
'scrollopt' 'sbo'	string	(default "ver,jump")
			global
	This is a comma-separated list of words that specifies how
	'scrollbind' windows should behave.  'sbo' stands for ScrollBind
	Options.
	The following words are available:
	    ver		Bind vertical scrolling for 'scrollbind' windows
	    hor		Bind horizontal scrolling for 'scrollbind' windows
	    jump	Applies to the offset between two windows for vertical
			scrolling.  This offset is the difference in the first
			displayed line of the bound windows.  When moving
			around in a window, another 'scrollbind' window may
			reach a position before the start or after the end of
			the buffer.  The offset is not changed though, when
			moving back the 'scrollbind' window will try to scroll
			to the desired position when possible.
			When now making that window the current one, two
			things can be done with the relative offset:
			1. When "jump" is not included, the relative offset is
			   adjusted for the scroll position in the new current
			   window.  When going back to the other window, the
			   new relative offset will be used.
			2. When "jump" is included, the other windows are
			   scrolled to keep the same relative offset.  When
			   going back to the other window, it still uses the
			   same relative offset.
	Also see |scroll-binding|.
	When 'diff' mode is active there always is vertical scroll binding,
	even when "ver" isn't there.

## Open Questions

- What about the code beyond the scrolloff?
  -> scrolloff knows you're at the end of the file

