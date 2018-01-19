#!/bin/bash

# -a, --archive
#   archive mode; equals -rlptgoD (no -H,-A,-X)
# -r, --recursive
#   recurse into directories
# -l, --links
#   copy symlinks as symlinks
# -p, --perms
#   preserve permissions
# -t, --times
#   preserve modification times
# -g, --group
#   preserve group
# -o, --owner
#   preserve owner (super-user only)
# -D
#   same as --devices --specials
# --devices
#   preserve device files (super-user only)
# --specials
#   preserve special files


# --out-format='%t %f %b'




# exclude hidden directories
#   --exclude='.*/'
# rsync $1 -r -p -t -g -v --stats --exclude=".*/" --include-from="from_nemo.files" \
rsync $1 -r -p -t -g -v --stats --exclude=".*/" --include-from="from_nemo.files" \
  --exclude='*' --prune-empty-dirs -hhh \
  fr_jh1130@login1.nemo.uni-freiburg.de:/work/ws/nemo/fr_jh1130-201708-0/jobs/gmxlab/sds/201801/farafonov2017developing/60ds/ .
