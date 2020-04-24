#! /bin/bash
#filenames=`ls -a`
filenames=$(ls -a)
for file in ${filenames}
do
	du -hs ${file}
done
