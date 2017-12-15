tests
testConfigure
	TaskManager configure: { #present -> #spec.
	                         #service -> #local.
	                         #repository -> #temporary }.
	self assert: TaskManager service class equals: TaskService.
	self assert: TaskManager repository class equals: TaskRepository.
	self assert: TaskManager present class equals: ListTasksModel.