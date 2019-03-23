#!/usr/bin/env python
# coding: utf-8

import sys
from operator import itemgetter

dict_color_count = {}

for line in sys.stdin:
    line = line.strip()
    color, count = line.split('\t', 1)
    try:
        count = int(count)
        dict_color_count[color] = dict_color_count.get(color, 0) + count
        
    except ValueError:
        pass
        
sorted_dict_color_count = sorted(dict_color_count.items(), key=itemgetter(1))[::-1][0]

for color, count in sorted_dict_color_count:
    print ('%s\t%s' % (color, count))
