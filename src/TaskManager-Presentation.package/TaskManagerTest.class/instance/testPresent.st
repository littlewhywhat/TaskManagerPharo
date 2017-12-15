tests-accessing
testPresent
  { nil. #nosuchpresentation. #spec } do: [ :eachId |
	  testInstance present: eachId.
	  self assert: (testInstance present) class equals: ListTasksModel.
	]
  