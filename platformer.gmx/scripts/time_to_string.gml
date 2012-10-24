var time, minutes, minutes_prefix;
time = argument0 / 1000 / 1000;
minutes_prefix = "";
minutes = floor(time % 60);
if (minutes < 10) {
  minutes_prefix = "0";
}
return string(floor(time / 60)) + ":" + minutes_prefix + string(minutes);
