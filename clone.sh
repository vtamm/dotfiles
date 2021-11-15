#!/bin/sh

echo "Cloning repositories..."

SITES=$HOME/Sites

# Personal
git clone git@github.com:vtamm/karolineforsberg.git $SITES/karolineforsberg
git clone git@github.com:vtamm/thomaseklof.git $SITES/thomaseklof
git clone git@github.com:vtamm/spacelebration.git $SITES/spacelebration

# Causality Agency
git clone git@github.com:mobile-interaction/esf.git $SITES/esf
git clone git@bitbucket.org:fitnessplayer/music_web.git $SITES/fitnessplayer
