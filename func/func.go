package main

import "fmt"

func main() {
}

func test1() {
	test2()
}

func test2() {
	test3()
}

func test3() {
	fmt.Println("test3")
}
