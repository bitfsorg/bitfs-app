package main

// #include <stdlib.h>
import "C"
import "unsafe"

// BitFS_Init initializes the BitFS engine.
// Returns 0 on success, non-zero on error.
//
//export BitFS_Init
func BitFS_Init(dataDir *C.char) C.int {
	// TODO: initialize libbitfs engine
	_ = C.GoString(dataDir)
	return 0
}

// BitFS_GetStatus returns daemon status as JSON string.
// Caller must free the returned string with BitFS_Free.
//
//export BitFS_GetStatus
func BitFS_GetStatus() *C.char {
	// TODO: query engine status
	return C.CString(`{"status":"ok"}`)
}

// BitFS_Free frees a C string allocated by this library.
//
//export BitFS_Free
func BitFS_Free(s *C.char) {
	C.free(unsafe.Pointer(s))
}

func main() {}
