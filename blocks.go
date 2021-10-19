package main

var (
	delim     = []byte(" ") // the delimiter that will be used
	shell     = "sh"        // shell used
	cmdstropt = "-c"        // command string opt for shell

	blocks = []block{
		{cmd: "$BARSCRIPTS/battery.sh", upInt: 60, inSh: true},
		{icon: "", cmd: "date +%H:%M", upInt: 60},
	}
)
