package main

import (
	"fmt"

	"mypackage"
)

func BarBar() string {
	return "bar bar"
}

func main() {
	fmt.Println("project 1", BarBar(), mypackage.Foo())
}
