package main

import (
	"fmt"
	"math"
)

func intToFloat(f float64) (int, int) {
	return int(math.Floor(f)), int(math.Ceil(f))
}

func main() {
	fmt.Println(intToFloat(2.7))
}
