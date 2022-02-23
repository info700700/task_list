package handler

import "net/http"

func RegHandlers() {
	fileServer := http.FileServer(http.Dir("static"))
	http.Handle("/", fileServer)
}
