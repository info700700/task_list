package main

import (
	"log"
	"net/http"

	"github.com/info700700/task_list/handler"
)

func main() {
	handler.RegHandlers()

	log.Fatal(http.ListenAndServe(":80", nil))
}
