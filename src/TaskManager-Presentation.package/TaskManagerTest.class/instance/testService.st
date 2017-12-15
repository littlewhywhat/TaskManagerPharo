tests-accessing
testService
  { nil. #nosuchservice. #local } do: [ :eachId |
	  testInstance service: eachId.
    self assert: (testInstance service) class equals: TaskService. 
	].