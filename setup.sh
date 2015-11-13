#!/usr/bin/env bash

mkdir "$HOME/bpg-1-rebase"
git clone git@github.com:OneAngryDBA/git-rebase-presentation.git "$HOME/bpg-1-rebase/origin"
cd "$HOME/bpg-1-rebase/origin"
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do
   git branch --track ${branch#remotes/origin/} $branch
done
git clone -l "$HOME/bpg-1-rebase/origin" "$HOME/bpg-1-rebase/merge"
cd "$HOME/bpg-1-rebase/merge"
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do
   git branch --track ${branch#remotes/origin/} $branch
done
git clone -l "$HOME/bpg-1-rebase/origin" "$HOME/bpg-1-rebase/rebase"
cd "$HOME/bpg-1-rebase/rebase"
for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do
   git branch --track ${branch#remotes/origin/} $branch
done

