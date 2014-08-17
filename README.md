vim-konsole
===========

This plugin renames KDE konsole sessions to display the current filename.
The purpose of this is to make Damian Conway's `vim-autoswap` plugin working
with KDE's konsole application.
One of the features of vim-autoswap is, when editing a file which is already
open in another vim session, it brings this window to the foreground. Therefore
it needs to interact with the windows manager. `vim-autoswap` uses `wmctrl` to
list windows and activate windows, but the window must display the current
filename in the first place.
Note, this only works with KDE4, not with KDE3.

Authors
-------

* Gerhard Gappmeier

License
-------

This is free software released into the public domain (CC0 license).

See the `COPYING.CC0` file or <http://creativecommons.org/publicdomain/zero/1.0/>
for more details.

