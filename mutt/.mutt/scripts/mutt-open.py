#!/usr/bin/env python3
# http://ruiabreu.org/2013-01-07-mutt-and-xdg.html
import hashlib
import os
import shutil
import subprocess
import sys

if __name__ == '__main__':

    if len(sys.argv) < 2:
        print('Usage: %s <filename> [suffix]')
        sys.exit(-1)

    oldfile = sys.argv[1]

    #newfile = mkstemp(suffix=suffix, prefix='mutt_bak_')[1]
    newfile = os.path.join('/tmp', 'mutt_bak_' + os.path.basename(oldfile))

    shutil.copyfile(oldfile, newfile)
    subprocess.call(['gnome-open', newfile])
