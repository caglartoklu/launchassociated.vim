# launchassociated.vim
Launches current file with the associated program.

For example, if you are editing an HTML file,
and type the command `LaunchAssociated`,
your default browser will open it.

It can be used on any file type, such as
`.xml`, `.html`, `.java` or even `.png`,
anything that is associated with a program.

## Installation

For [Vundle](https://github.com/gmarik/vundle) users:

    Bundle 'caglartoklu/launchassociated.vim'

For [Pathogen](https://github.com/tpope/vim-pathogen) users:

    cd ~/.vim/bundle
    git clone git://github.com/caglartoklu/launchassociated.vim

For all other users, simply drop the `launchassociated.vim` file to your
`plugin` directory.


## Supported Environments
- Tested on Windows 7.

It should work on Mac OS X and most of the
[POSIX](https://en.wikipedia.org/wiki/Posix)
systems, but not tested yet.
Tests on these (and any other) operating systems is appreciated.


## Usage
This plugin defines a single command:

- `LaunchAssociated`
   Launches currently opened file using the associated program.
   If the buffer is empty, nothing will happen.
   The current contents of the buffer will not be used,
   only the file persisted on the file system will be used.


## Configuration
None.


## To Do

- `kde-open` or `gnome-open` on Linux derivatives (and FreeBSD)
  instead of `xdg-open`


## License
Licensed with 2-clause license ("Simplified BSD License" or "FreeBSD License").
See the [LICENSE](https://github.com/caglartoklu/launchassociated.vim/blob/master/LICENSE) file.


## Contact Info
You can find me on
[Google+](https://plus.google.com/108566243864924912767/posts)

Feel free to send bug reports, or ask questions.

