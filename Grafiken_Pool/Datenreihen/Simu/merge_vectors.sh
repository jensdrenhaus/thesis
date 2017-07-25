#!/bin/bash
for file in *.csv
do
  cut -d, -f2 $file > {$file}.filtered
done

paste -d";" *.filtered > merged.csv
rm *.filtered