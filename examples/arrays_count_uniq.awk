#!/usr/bin/awk -f

BEGIN{
  FS=",";
  OFS=" ==> "
}
NR >= 1{
  _[$3]++
}
END{
  for(el in _){
    print el, _[el];
  }
}
