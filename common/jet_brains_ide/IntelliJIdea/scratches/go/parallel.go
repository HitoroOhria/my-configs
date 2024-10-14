package main

import (
    "fmt"
    "sync"
    "time"
)

func main() {
    // wg()
    channel()
}

func wg() {
    wg := &sync.WaitGroup{}
    wg.Add(2)

    go func() {
        defer wg.Done()

        time.Sleep(1 * time.Second)
        fmt.Print("wg: 1\n")
    }()
    go func() {
        defer wg.Done()

        time.Sleep(2 * time.Second)
        fmt.Print("wg: 2\n")
    }()

    fmt.Printf("normal\n")

    wg.Wait()
}

func channel() {
    c := make(chan int, 2)

    go func() {
        c <- 1
    }()
    go func() {
        c <- 2
    }()

    // 値を受信する間にチャネルを閉じると、値が受信できない
    // close(c)

    fmt.Printf("value: %d\n", <-c)
    fmt.Printf("value: %d\n", <-c)

    close(c)
}

func channelDeadLock() {

}