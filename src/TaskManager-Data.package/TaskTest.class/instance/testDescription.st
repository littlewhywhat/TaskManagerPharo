tests-accessing
testDescription
  | task todo |
  todo := 'task one'.
  task := Task new.
  self assert: task description equals: ''.
  task description: todo.
  self assert: task description equals: todo.