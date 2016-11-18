#!/bin/bash

if [ -z $(which locate) ] ; then
  echo "Go get Linux."
  exit 1
fi
HOOKS_FOLDER=$(locate -l 1 git-core/templates/hooks)

if [ -n $HOOKS_FOLDER ] && [ -d $HOOKS_FOLDER ] ; then
  if [ -e "$HOOKS_FOLDER/commit-msg" ] ; then
    echo "You're already using commit-msg hooks, you'll need to install this manually."
    echo "You can also use this only on specific projects copying 'commit-msg' to the .git/hooks folder."
    exit 1
  else
    echo "Copying file..."
    sudo cp commit-msg $HOOKS_FOLDER/
    echo "Done! Installedo n ${HOOKS_FOLDER}"
    exit 0
  fi
else
  echo "I didn't found the git-core folder, please install it manually."
  exit 1
fi
