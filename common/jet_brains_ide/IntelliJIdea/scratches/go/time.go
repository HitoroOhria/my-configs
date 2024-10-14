package main

import (
	"fmt"
	"time"
)

func main() {
	// printT()
	newT()
}

func printT() {
	now := time.Now()

	fmt.Printf("now = %+v\n", now)
}

func newT() {
    // simple Date
	t1 := time.Date(2024, 4, 15, 0, 0, 0, 0, time.UTC)
	fmt.Printf("t1 = %+v\n", t1)

    // 6 months before
	t2 := time.Date(2024, 4-time.Month(6), 15, 0, 0, 0, 0, time.UTC)
	fmt.Printf("t2 = %+v\n", t2)
    t3 := time.Date(2024, -2, 15, 0, 0, 0, 0, time.UTC)
    fmt.Printf("t3 = %+v\n", t3)
}
