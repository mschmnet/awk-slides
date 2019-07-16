#!/usr/bin/awk -f

BEGIN{
  FS="\(\",\"\)\|\(\"\)";
}
$2 ~ /^[0-9][0-9]\/[0-9][0-9]\/[0-9]{4} [0-9][0-9]:[0-9][0-9]$/{
  date_time=$2;
  temperature=$3;
  humidity=$11;
  total_temperature+=temperature;
  total_humidity+=humidity;
  number_items++;
}
END{
  printf "Average temperature: %.2f\n", total_temperature / number_items;
  printf "Average humidity: %.0f\n", total_humidity / number_items;
}
