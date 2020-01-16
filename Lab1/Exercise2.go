package main

import (
	"fmt"
	"strings"
)

func main() {
	lineWidth := 5
	symb := "x"
	count1 := 1
	for ; count1 <= lineWidth; count1++{
		lineSymb := strings.Repeat(symb, count1)
		formatStr := fmt.Sprintf("%%%ds\n", lineWidth)
		fmt.Printf(formatStr, lineSymb)
	}

	count2 := 4
	for ; count2 > 0; count2--{
		lineSymb := strings.Repeat(symb, count2)
		formatStr := fmt.Sprintf("%%%ds\n", lineWidth)
		fmt.Printf(formatStr, lineSymb)
	}
}
