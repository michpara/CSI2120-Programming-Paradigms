package main

import (
	"fmt"
)

func statusPrint(state int8) {
	const (
		REVERSE = iota -1
		IDLE
		START
		FORWARD
		FAST
	)

	var statusMap = map[int]string{
		IDLE:    "State is Idle (%d)\n",
		START:   "State is Start (%d)\n",
		FORWARD: "State is Forward (%d)\n",
		FAST:    "State is Fast (%d)\n",
		REVERSE: "State is Reverse (%d)\n",
	}

	switch state {
	case IDLE:
		fmt.Printf(statusMap[IDLE], IDLE)
	case START:
		fmt.Printf(statusMap[START], START)
	case FORWARD:
		fmt.Printf(statusMap[FORWARD], FORWARD)
	case FAST:
		fmt.Printf(statusMap[FAST], FAST)
	case REVERSE:
		fmt.Printf(statusMap[REVERSE], REVERSE)
	default:
		fmt.Printf("Invalid state: %d\n", state)
	}
	return
}

func main() {
	var i int8
	for i = -1; i < 5; i++ {
		statusPrint(i)
	}
}