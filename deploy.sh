#!/bin/bash

tmp=/tmp/tmp$$

cur_dir=$(pwd)
git_dir=$tmp-git_dir
site_dir=$(pwd)/site
reponame=pcetsogtoo.github.com

repo=git@github.com:pcetsogtoo/pcetsogtoo.github.com.git

mkdir -p $git_dir
cd $git_dir

git clone $repo
cd $reponame

cp -rp $site_dir/* .
git add .
git commit -m "test"
git push

sudo rm -r $tmp-*
exit 0
