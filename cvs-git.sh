#!/bin/bash

cvs2git --blobfile=git-blob.dat --dumpfile=git-dump.dat --cvs-domain=retavortaro.de --username=revo \
    --encoding=iso-8859-3 --encoding=utf-8 --fallback-encoding=iso-8859-3 --trunk-only ./cvsroot

# --dry-run /path/to/cvs/repo