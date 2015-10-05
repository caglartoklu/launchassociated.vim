# launchassociated.vim
Launches current file with the associated program.

For example, if you are editing an HTML file,
and type the command `LaunchAssociated`,
your default browser will open it.

It can be used on any file type, such as
`.xml`, `.html`, `.java` or even `.png`,
anything that is associated with a program.

Vim.org page: http://www.vim.org/scripts/script.php?script_id=4755


# Installation

For [Vundle](https://github.com/VundleVim/Vundle.vim) users:

    Plugin 'caglartoklu/launchassociated.vim'

For all other users, simply drop the `launchassociated.vim` file to your
`plugin` directory.


# Usage

## `LaunchAssociated`
Launches currently opened file using the associated program.
If the buffer is empty, nothing will happen.
The current contents of the buffer will not be used,
only the file persisted on the file system will be used.

## `LaunchSpecial`
This command can be used to define an alternative file association.
For example, markdown files could be associated with Vim in your operating system,
but using this command, it is possible to associate markdown files with another program, say, Firefox.
This association will be only valid in Vim, and the operating system will be unaffected.

## `SelectFile`
Opens the file manager and selects the file in the buffer.
Currently, only Windows and Exlorer is supported for this command.


# Configuration

## Configuration for LaunchSpecial Command

You can associate a file type with a command.
You can use the placeholders in your command.

```viml
let g:launchassociated_special_launchers = {}
let g:launchassociated_special_launchers.markdown = '"C:\Program Files\Mozilla Firefox\firefox.exe" "{{bufferpath}}"'
```


## Placeholders

- `{{bufferpath}}` : full path of the buffer


# To Do

- `kde-open` or `gnome-open` on Linux derivatives (and FreeBSD)
  instead of `xdg-open`


# License
Licensed with 2-clause license ("Simplified BSD License" or "FreeBSD License").
See the [LICENSE](https://github.com/caglartoklu/launchassociated.vim/blob/master/LICENSE) file.

