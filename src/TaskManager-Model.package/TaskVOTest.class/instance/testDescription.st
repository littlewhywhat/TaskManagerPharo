tests-accessing
testDescription
  | task todo |
  todo := 'task one'.
  task := TaskVO new.
  self assert: task description equals: 'nothing'.
  task description: todo.
  self assert: task description equals: todo.