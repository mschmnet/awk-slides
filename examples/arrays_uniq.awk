#!/usr/bin/awk -f

BEGIN{
  FS=",";
}
NR >= 1 && !_[$3]++
