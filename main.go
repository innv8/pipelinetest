package main

import "fmt"

func main() {
	fmt.Printf("Hello World. Double 2 is %d\n", DoubleValue(2))
}

func DoubleValue(n int) int {
	return n * 2
}
