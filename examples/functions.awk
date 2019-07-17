#!/usr/bin/awk -f

BEGIN{
 print_text("Hello world"); 
}

function print_text(text_parameter){
  print "This function prints the parameter: " text_parameter;
}
