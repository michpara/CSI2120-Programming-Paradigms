package main

import "fmt"

type Course struct {
	NStudents int
	Professor string
	Avg float64
}

func main() {
	var m = make(map[string]Course)

	var (
		CSI2110 = Course{186, "Lang", 79.500000}
		CSI2120 = Course{211, "Moura", 81.000000}
	)

	m["CSI2110"] = CSI2110
	m["CSI2120"] = CSI2120

	for k, v := range m {
		fmt.Printf("Course Code: %s\n", k)
		fmt.Printf("Number of students: %d\n", v.NStudents)
		fmt.Printf("Professor: %s\n", v.Professor)
		fmt.Printf("Average: %f\n\n", v.Avg)
	}
}