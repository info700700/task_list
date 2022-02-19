package work

type TaskStatus uint8

const (
	Planned    TaskStatus = 1
	InProgress TaskStatus = 2
	Complete   TaskStatus = 3
)

type Task struct {
	Name   string
	Status TaskStatus
}
