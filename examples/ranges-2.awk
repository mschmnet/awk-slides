#!/usr/bin/awk -f

/15:00/{
  want_print=1;
  #next;
}

want_print{
  print $0;
}

/05:00/{
  want_print=0
}

