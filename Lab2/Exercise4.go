package main

import (
	"fmt"
	"time"
)

var (
	Count      int = 0
	nFunctions int = 2
)

var sema = make(chan int)

func main() {
	ch := make(chan int)
	fmt.Printf("Count = %d\n", Count)
	go increment(ch, 100)
	go decrement(ch, 100)
	<-sema
	for i := 0; i < nFunctions*100; i++ {
		fmt.Printf("Waiting %d\n", Count )
		<-ch
	}
	fmt.Printf("Count = %d\n", Count)
}

func increment(ch chan int, nSteps int) {
	for i := 0; i < nSteps; i++ {
		sema <- 1
		cnt := Count
		time.Sleep(3 * time.Millisecond)
		Count = cnt + 1
		ch <- 1
		<-sema
	}
	return
}

func decrement(ch chan int, nSteps int) {
	for i := 0; i < nSteps; i++ {
		sema <- 1
		cnt := Count
		time.Sleep(2 * time.Millisecond)
		Count = cnt - 1
		ch <- 1
		<-sema
	}
	return
}