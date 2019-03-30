VIFM CONFIGS
============

Special configurations for the VIFM. The configuration data improves theme of the VIFM and add some usability.

Manual: https://vifm.info/manual.shtml

Install in Debian
-----------------

From repository:

```
$ sudo apt-get update && sudo apt-get -y install xsel vifm
```

Compile:

```
$ cd /tmp/&& \
  sudo apt-get -y install xsel libncursesw5 libncursesw5-dev dh-autoreconf && \
  sudo apt-get -y install sshfs curlftpfs fuse fuse-zip fusefat fuseiso && \
  git clone https://github.com/vifm/vifm.git && \
  cd vifm/ && \
  autoreconf -f -i && \
  ./configure && \
  make && \
  sudo make install && \
  sudo ln -s /usr/local/bin/vifm /usr/bin/ && sudo ln -s /usr/bin/vifm /usr/bin/vc
```

Themes
------

Configurations have two themes:

- local - beautiful dark theme;
- server - a replica of the local theme but with marked boundaries of the red color, which allows if use the terminal and ssh connect to determine by visually what OS you are used now.

Special keymap
--------------

- `za` - toggle showing hidden files;
- `zo` - show hidden files;
- `zm` - hide hidden files;
- `u` - undo;
- `^r` - redo;
- `space` - select and choose next file;
- `*` - select all files;
- `t` - select file;
- `v` or `V`- select group of file (enter - ok; esc - cancel);
- `j` - move up;
- `k` - move down;
- `h` - up directory;
- `l` - enter;
- `Y` - add link to `""` register;
- `p` - copy from the `""` register;
- `P` - move from the `""` register;
- `"[a-z]Y` - add link to the `a`-`z` registers (`"aY` or `"ap`);
- `"[a-z]p` - copy from the `a`-`z` registers;
- `"[a-z]P` - move from the `a`-`z` registers;
- `F5` - copy files;
- `F6` - move files;
- `F7` - new folder;
- `F8` - remove file like `dd`;
- `Ctrl+s` - sync panels;
- `dd` - remove file into `""` register;
- `"[a-z]dd` - remove file into `a`-`z` register;
- `DD` - force remove file (without registers);
- `cw` - rename full filename;
- `cW` - rename main filename (without extensions);
- `:rename` - edit filename (or all selected filenames) in editor;
- `:cd <path>` - change path;
- `:sort` - sort files;
- `:tree` - show files like tree;
- `:view` - view mode (use `:view` again to stop);
- `/` - search in current dir (use `n` and `N` - for next/privious file);
- `:noh` - purge search results;
- `:s` - replace (for example, change *.css to *.scss in current dir only: `:s/\.css$/.scss/i`);
- `:reg` - register list (use `q` - exit);
- `:lstrash` - open trash (use: `r` - restore file; `dd` - remove from trash; `q` - exit);
- `:trashes` - trash list (use: `enter` - open trash directory; `:restore` - restore file; `:empty` - clean trash);
- `:bmark` - add bookmark (for example: `:bmark workfolder`);
- `:bmarks` - show bookmarks;
- `:set all` - show current settings;
- `:nm` - hot key list;

Quick Start
-----------

Installation of configurations:

```
$ git clone git://github.com/valsorym/vifm-configs /tmp/vifm-configs
$ cd /tmp/vifm-configs
```

For local:

```
$ make local
```

For server:

```
$ make server
```

License
-------

Copy, modify and use in anywhere!

