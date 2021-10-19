package main

var (
	delim     = []byte(" ") // the delimiter that will be used
	shell     = "sh"        // shell used
	cmdstropt = "-c"        // command string opt for shell

	blocks = []block{
		{icon: "", cmd: "date +%H:%M", upInt: 60},
	}
)
