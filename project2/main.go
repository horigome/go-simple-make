package main

import (
	"fmt"

	"mypackage"
)

func HogeHoge() string {
	return "hoge hoge"
}

func main() {
	fmt.Println("project 2 hello ", HogeHoge(), mypackage.Foo())
}
