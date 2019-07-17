#!/usr/bin/awk -f

BEGIN{
  FS=",";
}
NR > 1{
  _[$4,$3]++; 
}
END{
  for(el in _){
    split(el, keys, SUBSEP);
    printf "%-15s %-30s %10d\n", keys[1], keys[2], _[el];
  }
}
