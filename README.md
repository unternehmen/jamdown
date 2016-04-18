# jamdown
A curl-based shell script for downloading Jamendo albums as Ogg Vorbis.

## Usage
The command

    $ ./jamdown.sh https://www.jamendo.com/album/87930/orphan-songs

will download every song in the Orphan Songs album as OGG files,
named in the fashion 1.ogg, 2.ogg, 3.ogg, ..., N.ogg.  You might
use a command like ogginfo to replace these numerical names with
more informative names.

You should be able to download any album of your choosing this
way.  You must simply replace the URL in the above command with
the album page URL for another album.

Note: the script expects the SHELL environment variable to be set
to the path of a Bourne-compatible shell.  Also, you must have
xargs and curl installed (they usually are on today's Linux distros).

## License
jamdown is licensed under the CC0 1.0 Universal license, a copy
of which should have come with this package.  
To the extent possible under law, I waive all copyright
and related or neighboring rights to jamdown.  I make no
warranty about the work and disclaim liability for all uses
of the work, to the extent possible under law.
