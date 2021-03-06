#!/bin/bash

# create intallation directory
cd $HOME
mkdir .fortify/
cd .fortify/

# remove any previous binaries
rm fortify
rm fortify.latest.tar.xz

# download compressed binary
wget -c https://github.com/AbhijitSinha1/fortify.bin/blob/release/fortify.latest.tar.xz?raw=true -O fortify.latest.tar.xz

# extract compressed binary
tar -xvf fortify.latest.tar.xz

# copy extracted binary to /usr/local/bin
sudo cp fortify /usr/local/bin

# cleanup
rm fortify
rm fortify.latest.tar.xz

echo "fortify setup complete"

