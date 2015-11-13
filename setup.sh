#!/usr/bin/env bash
mkdir bpg-1-rebase
git clone --bare --recursive git@github.com:OneAngryDBA/git-rebase-presentation.git bpg-1-rebase/origin
current_dir=`pwd`
git clone --recursive -l "$current_dir/bpg-1-rebase/origin" bpg-1-rebase/merge
git clone --recursive -l "$current_dir/bpg-1-rebase/origin" bpg-1-rebase/rebase

