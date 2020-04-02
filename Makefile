
FILE = main

all:
	go build -gcflags '-N -l' -o $(FILE).notopt
	go build -o $(FILE).opt
