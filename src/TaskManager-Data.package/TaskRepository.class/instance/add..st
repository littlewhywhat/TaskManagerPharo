adding
add: task
	"add task to repository"

	task id: tasks size.
	tasks at: task id put: task.
	^ task.