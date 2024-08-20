#!/usr/bin/env fish

set file 'hetero-qq_cn6.50.txt'
test -e $file; or exit 1

set raw (cat $file)
set pinyin
set cn

echo "Reading from $file..."
for l in $raw:
    set line_items (string split ' ' $l)
    set --append pinyin $line_items[1]
    set --append cn $line_items[2]
end

set new_file 'hetero-qq_cn6.50-modified.txt'

echo "Writing to $new_file..."
for i in (seq 1 (count $pinyin))
    echo $cn[$i] $pinyin[$i] 3 >>$new_file
end

libime_pinyindict $new_file "ff14.dict"
