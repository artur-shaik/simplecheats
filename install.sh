#!/bin/bash

cd "$(dirname "$0")"

if [[ -f ~/bin/cheat ]]; then
    mv ~/bin/cheat{,.orig}
fi
ln -s $PWD/cheat ~/bin/cheat

if [[ -d ~/.cheat ]]; then
    mv ~/.cheat{,.orig}
fi
ln -s $PWD/.cheat ~/.cheat

echo "Installed!"
