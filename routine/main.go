package main

import (
	"fmt"
	"time"
)

func main() {
	ch := make(chan int64)

	go func(ch chan int64) {
		fmt.Println("Hello threading world!")
		v := time.Now().Unix()
		ch <- v
	}(ch)

	ret := <-ch
	fmt.Println(ret)
}
