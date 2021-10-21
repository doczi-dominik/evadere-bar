package main

var (
	delim     = []byte(" / ") // the delimiter that will be used
	shell     = "sh"          // shell used
	cmdstropt = "-c"          // command string opt for shell

	blocks = []block{
		{icon: "", cmd: `printf "%.0f%%\n" "$(light -G)"`, upSig: 10, inSh: true},
		{cmd: "$BARSCRIPTS/battery.sh", upInt: 60, inSh: true},
		{icon: "", cmd: "date +%H:%M", upInt: 60},
	}
)
