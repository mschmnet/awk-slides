#!/usr/bin/awk -f

BEGIN{
  command_get_date="date +\"%d-%m-%Y\"";
  command_get_date | getline result;
  close(command_get_date);
  print "Today is " result;
}

