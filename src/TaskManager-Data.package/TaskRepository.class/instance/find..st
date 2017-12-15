searching
find: task
	"find task by its id and return it"

	^ (tasks at: (task id) ifAbsent: nil).