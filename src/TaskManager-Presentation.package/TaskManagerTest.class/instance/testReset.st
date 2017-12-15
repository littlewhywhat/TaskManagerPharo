tests-instance-creation
testReset
  TaskManager configure: { #repository -> #temporary }.
  self assert: (TaskManager repository) class equals: TaskRepository.
  TaskManager reset.
  self assert: (TaskManager repository) class equals: TaskRepository.
  