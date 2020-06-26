package main

// #cgo CFLAGS: -DPNG_DEBUG=1
// #cgo amd64 386 CFLAGS: -DX86=1
// #cgo LDFLAGS: -llib -L/Users/pfistera/workspace/ap-c-hello
// #include "lib.h"
import "C"

import "fmt"

func main() {
	text := "Peter"
	cString := C.CString("Hallo Andreas " + text)
	fmt.Printf("Hello, world", cString)
	C.f0_void()
	C.f0_int(91)

	C.f0_string(cString)

	i := C.f0_addInt(10)
	fmt.Println("i=", i)

}
