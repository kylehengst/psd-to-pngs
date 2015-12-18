#!/bin/bash

# get
for i in $(identify -format "%[label] %[scene]\n" test.psd); do
    # do convert test.psd[0] test.psd[$i] \( -clone 0 -alpha transparent \) -swap 0 +delete -coalesce -compose src-over -composite $i.png
    echo item: $i
done
