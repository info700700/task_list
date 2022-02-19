package work

// статус задачи
type TaskStatus uint8

const (
	Wait       TaskStatus = 0 // В ожидании. Задачу нужно сделать когда-нибудь, но сейчас на эту задачу нет времени (ресурсов).
	Planned    TaskStatus = 1 // Запланировано. На данную задачу есть время (ресурсы). Задача должны быть сделана в ближайшее время. (Например, в ближайшие 2 недели.)
	InProgress TaskStatus = 2 // В работе.
	Cancelled  TaskStatus = 3 // Задача отменена.
	Complete   TaskStatus = 4 // Выполнено.
)

// задача
type Task struct {
	Name   string
	Status TaskStatus
}
