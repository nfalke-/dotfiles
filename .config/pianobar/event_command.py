#!/usr/bin/env python

import os
import sys
from os.path import expanduser, join

path = expanduser("~/.config")
fn = join(path, 'pianobar', 'nowplaying')

info = sys.stdin.readlines()
cmd = sys.argv[1]

if cmd == 'songstart':
    with open(fn, 'w') as f:
        f.write(info[1].split('=')[1].strip() + " by " + info[0].split('=')[1].strip())
