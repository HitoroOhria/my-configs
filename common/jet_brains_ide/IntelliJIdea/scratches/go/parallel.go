package main

import (
	"fmt"
	"sync"
	"time"
)

// https://zenn.dev/hsaki/books/golang-concurrency/viewer/appliedusage
// https://tech.yappli.io/entry/goroutine-channel
func main() {
	// noMeeting()
	// wg()
	// forLoop()
	// dataRace()
	channel()
}

func noMeeting() {
	fmt.Printf("start\n")

	go func() {
		time.Sleep(1 * time.Second)
		fmt.Printf("1 second passed \n")
	}()

	// 待ち合わせなしなので、"1 second passed" が表示される前に終了してしまう
	// Go はメインゴールーチンが終わったら、他のゴールーチンの終了を待たずにプログラム全体が終わる
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

	// 内部カウンタが 0 になるまで待つ
	wg.Wait()
	fmt.Printf("finish\n")
}

func forLoop() {
	// Bad
	for i := 0; i < 3; i++ {
		go func() {
			// メインゴルーチンの i はループごとに上書きされ、サブグルーチン処理時の i を参照する
			// 2, 2, 2
			fmt.Printf("%d\n", i)
		}()
	}

	// Good
	for i := 0; i < 3; i++ {
		go func(i int) {
			// サブグルーチン呼び出し時の i を参照する
			// 0, 2, 1
			fmt.Printf("%d\n", i)
		}(i)
	}
}

func dataRace() {
	// Bad
	{
		src := []int{1, 2, 3, 4, 5}
		dst := []int{}

		for _, s := range src {
			go func(s int) {
				result := s * 2
				// 各ゴルーチンで dst の読み込みと dst の書き込みにタイムラグがあり、前のゴルーチンをの結果を上書きしてしまう
				dst = append(dst, result)
			}(s)
		}

		// meeting
		time.Sleep(time.Second)

		// [2 10]
		fmt.Println(dst)
	}

	// Good
	{
		src := []int{1, 2, 3, 4, 5}
		dst := []int{}

		c := make(chan int, len(src))

		for _, s := range src {
			go func(s int) {
				result := s * 2
				c <- result
			}(s)
		}

		for _ = range src {
			num := <-c
			dst = append(dst, num)
		}

		// [10 2 4 6 8]
		fmt.Println(dst)

		close(c)
	}
}

func channel() {
    // バッファ付きチャネル
	c := make(chan int, 2)

	go func() {
		c <- 1
	}()
	go func() {
		c <- 2
	}()

	// 値を受信する間にチャネルを閉じると、値が受信できない
	// close(c)

	// チャネルは値を受信するまで、メインゴルーチンをブロックする
	fmt.Printf("value: %d\n", <-c)
	fmt.Printf("value: %d\n", <-c)
    // バッファ以上に読み込むとエラー: fatal error: all goroutines are asleep - deadlock!
    // fmt.Printf("value: %d\n", <-c)

	close(c)
}

func channelDeadLock() {

}
