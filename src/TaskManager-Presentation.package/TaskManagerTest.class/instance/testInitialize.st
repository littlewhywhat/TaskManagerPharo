tests-initialization
testInitialize
  self assert: testInstance service class equals: TaskService.
  self assert: testInstance repository class equals: TaskRepository.
  self assert: testInstance present class equals: ListTasksModel.