#!/Users/JoseJavier/anaconda/envs/py3/bin/python
from os.path import isfile, splitext
import subprocess
import sys

if __name__ == '__main__':
    files = sys.argv[1:]
    subtitle = 'subliminal download -l en'.split() + files
    subprocess.call(subtitle)
    subfiles = []
    for file in files:
        filename, file_extension = splitext(file)
        sub = filename + '.en.srt'
        if isfile(sub):
            subfiles.append(sub)
    files.extend(subfiles)

    subprocess.call('filebot -rename -non-strict'.split() + files)
