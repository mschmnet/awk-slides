#!/usr/bin/awk -f

BEGIN{
  command_cat="cat ./input.txt";
  while (( command_cat | getline line) > 0){
    print "Line is: " line;
  }
  close(command_cat);
}

