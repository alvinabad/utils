#!/bin/bash

#-------------------------------------------------------------------------------
# The MIT License (MIT) - http://opensource.org/licenses/MIT
# Copyright (c) 2013 Alvin Abad
#-------------------------------------------------------------------------------

# This is for GIT_SSH use
# Set GIT_SSH=path_to_this_script
# and export this to your environment, e.g., export GIT_SSH

# When you run git with a specified keyfile, run it like this:
#-------------------------------------------------------------------------------
#     PKEY=~/.ssh/somekey.pem git clone git@github.com:me/repo.git
#-------------------------------------------------------------------------------
# You may use a different name instead of PKEY as long as it matches
# the variable used in this script. See below.

if [ -z "$PKEY" ]; then
    # if PKEY is not specified, run ssh using default keyfile
    ssh "$@"
else
    ssh -i "$PKEY" "$@"
fi
