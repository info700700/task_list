package main

import (
	_ "embed"
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", handleMain)

	log.Fatal(http.ListenAndServe(":80", nil))
}

//go:embed index.html
var mainPage string

func handleMain(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, mainPage)
}
