package work

// статус задачи
type TaskStatus uint8

const (
	Wait       TaskStatus = 0 // в ожидании. Задачу нужно сделать когда-нибудь, но сейчас на эту задачу нет времени (ресурсов).
	Planned    TaskStatus = 1
	InProgress TaskStatus = 2 // в работе
	Complete   TaskStatus = 3
)

// задача
type Task struct {
	Name   string
	Status TaskStatus
}
