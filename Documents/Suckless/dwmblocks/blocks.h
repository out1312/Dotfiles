//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
 
  //{" Vol: ", "~/.config/dwmblocks/scripts/volume.sh", 0, 5},
  //
  {" Vol: ", "amixer get Master | awk -F'[][]' '/%/ {print $2}' | head -n1", 1, 0},

  //{"", "echo \"Bat: $(cat /sys/class/power_supply/BAT1/capacity)%\"", 60, 0},

  {"", "echo \"Bat: $(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | awk '{print $2}')\"", 60, 0},

	{"Mem: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},

  {"", "printf \"%s %s \" \"$(LC_TIME=gl_ES.UTF-8 date '+%A, %-d %B,')\" \"$(LC_TIME=en_US.UTF-8 date '+%-I:%M %p')\"", 5, 0},

  //{"", "printf \"%s %s\" \"$(LC_TIME=gl_ES.UTF-8 date '+%A, %-d %B,')\" \"$(LC_TIME=en_US.UTF-8 date '+%-I:%M %p')\"", 5, 0},
  //Non funciona porque gl_ES.UTF-8 non ten soporte de %p para AM/PM en date.
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
