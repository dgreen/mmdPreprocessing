# mmdPreprocessing

Preprocessing of MultiMarkdown Files

## Preprocess DATELM, DIV:, ENDDIV, TITLE

1. Change occurences of DATELM to present today's date i.e. 26 May 2019.

1. Change occurences of  DIV:text to \<div markdown="1" id="text"> .  This used to cause one to use markdown syntax inside HTML blocks but it is not supported in Multimarkdown 6.

1. Change occurences of TITLE to the header value to the Title: key if it exists.  Note that since it is in the header, it must have two spaces at the end of th line.


## Support Mac Symbols

Use Brett Terpstra's [macsymbols.rb][] to replace the various special keyboard names surrounded by {{ }} with HTML Unicode values.

| Name                            |  Symbol  |
|:--------------------------------|:--------:|
| apple                           | &#63743; |
| comm, command, cmd, or clover   | &#8984;  |
| cont, control, ctl, or ctrl     | &#8963;  |
| opt, option, or alt             | &#8997;  |
| shift                           | &#8679;  |
| tab                             | &#8677;  |
| caps or capslock                | &#8682;  |
| eject                           | &#9167;  |
| return                          | &#9166;  |
| enter                           | &#8996;  |
| del, delete, back, or backspace | &#9003;  |
| fwddel, or fwddelete            | &#8998;  |
| esc, or escape                  | &#9099;  |
| right                           | &#8594;  |
| left                            | &#8592;  |
| up                              | &#8593;  |
| down                            | &#8595;  |
| pgup                            | &#8670;  |
| pgdn                            | &#8671;  |
| home                            | &#8598;  |
| end                             | &#8600;  |
| clear                           | &#8999;  |
| gear                            | &#9881;  |

[macsymbols.rb]: https://brettterpstra.com/2019/04/19/creating-shortcuts-for-mac-symbols-in-html/
