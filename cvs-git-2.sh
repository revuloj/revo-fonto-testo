#!/bin/bash

# git init
cat git-blob.dat git-dump.dat | git fast-import

# Then delete the TAG.FIXUP branch and run gitk --all to view the results of the conversion:
# git branch -d TAG.FIXUP

# https://help.github.com/en/github/importing-your-projects-to-github/adding-an-existing-project-to-github-using-the-command-line, paŝoj 1, 7ff

