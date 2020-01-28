package main

import "fmt"

type dog struct {
	name string
	race string
	female bool
}

func (d *dog) rename(newName string) {
	d.name = newName
}

func main() {
	fido := dog {"Fido", "Poodle", false }
	fido.rename("Cocotte")
	fmt.Println(fido.name)
}