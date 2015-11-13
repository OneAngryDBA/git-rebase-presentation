#!/usr/bin/env bash

mkdir "$HOME/bpg-1-rebase"
git clone --bare --recursive git@github.com:OneAngryDBA/git-rebase-presentation.git "$HOME/bpg-1-rebase/origin"
git clone --recursive -l "$HOME/bpg-1-rebase/origin" bpg-1-rebase/merge
git clone --recursive -l "$HOME/bpg-1-rebase/origin" bpg-1-rebase/rebase
