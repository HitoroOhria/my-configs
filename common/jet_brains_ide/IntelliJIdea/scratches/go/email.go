package main

import (
	"fmt"
	"log"
	"net/mail"
)

func main() {
	parseAddress()
}

func parseAddress() {
	addr1 := "Some Name <name@example.com>"
	parsed1, err := mail.ParseAddress(addr1)
	fmt.Printf("parsed1: Name = %+v, Address = %+v\n", parsed1.Name, parsed1.Address)
	if err != nil {
		log.Fatal(err)
	}

	addr2 := "name@example.com"
	parsed2, err := mail.ParseAddress(addr2)
    fmt.Printf("parsed2: Name = %+v, Address = %+v\n", parsed2.Name, parsed1.Address)
	if err != nil {
		log.Fatal(err)
	}
}
