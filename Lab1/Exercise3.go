package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Person struct {
	lastName  string
	firstName string
	iD        int
}

func inPerson(p *Person, nextId int) (int, error){
	p.iD = nextId
	nextId++
	return nextId, nil
}

func printPerson(p Person){
	fmt.Println(" First name: " + p.firstName, "Last name: " + p.lastName, "ID: " + strconv.Itoa(p.iD))
}

func main() {
	nextId := 101
	for {
		var (
			p   Person
			err error
		)
		reader := bufio.NewReader(os.Stdin)

		fmt.Print("Enter the person's first name: ")
		firstName, _ := reader.ReadString('\n')
		fmt.Print("Enter the person's last name: ")
		lastName, _ := reader.ReadString('\n')

		p.firstName = firstName
		p.lastName = lastName
		nextId, err = inPerson(&p, nextId)

		if err != nil {
			fmt.Println("Invalid entry ... exiting")
			break
		}
		printPerson(p)
	}
}