
#!/usr/bin/env python
# coding: utf-8

import csv
import sys

reader = csv.reader(sys.stdin)

for line in reader:
       
    if （line[33] != "Vehicle Color"） & （one_line[33] != ""）:
        print('%s\t%s' % (line[33], '1'))
              
    elif one_line[33] == "":
        print('%s\t%s' % ("No Record", '1'))


