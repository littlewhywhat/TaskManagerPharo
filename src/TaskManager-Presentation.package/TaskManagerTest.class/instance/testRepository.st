tests-accessing
testRepository
  { nil. #nosuchrepo. #temporary } do: [ :id | 
	  testInstance repository: id.
	  self assert: (testInstance repository) class equals: TaskRepository.
	].