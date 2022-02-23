package main

import (
	_ "embed"
	"fmt"
	"log"
	"net/http"

	"github.com/info700700/task_list/handler"
)

func main() {
	handler.RegHandlers()

	http.HandleFunc("/", handleMain)

	log.Fatal(http.ListenAndServe(":80", nil))
}

//go:embed index.html
var mainPage string

func handleMain(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, mainPage)
}
