#!/bin/bash -e
# File: gen-html.sh
# Author: Yuxin Wu <ppwwyyxx@gmail.com>

PROG=`readlink -f $0`
DIR=`dirname $PROG`
cd $DIR

function work {
	git clone https://github.com/torch/"$1".git --depth 1 || true

	for i in $1/doc/*.md; do
		chmod -x $i				# some docs are executable, ugly
		cp -vn $i ./$1-`basename $i`
	done
}

work torch7
work nn
work optim
work paths
work image
work cunn

for i in *.md; do
	echo $i
	grip --export $i
done

mv *.html ../html
