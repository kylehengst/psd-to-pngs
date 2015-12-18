#!/bin/bash

infile=test.psd
prefix='test-'

# convert test.psd[0] test.psd[$i] \( -clone 0 -alpha transparent \) -swap 0 +delete -coalesce -compose src-over -composite $i.png

i=1
for layername in $(convert $infile -verbose info: | grep "label:" | cut -d: -f 2 | cut -d' ' -f2)
    do
    	convert $infile[0] $infile[$i] \( -clone 0 -alpha transparent \) -swap 0 +delete -coalesce -compose src-over -composite $prefix$layername.png
		echo $layername
		let i++
done
