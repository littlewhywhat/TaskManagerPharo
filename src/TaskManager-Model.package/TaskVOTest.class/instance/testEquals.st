tests-comparing
testEquals
  | task anotherTask description |
  description := 'todo'.
  task := TaskVO new.
  anotherTask := TaskVO new.
  self assert: task = anotherTask equals: true.
  task description: description.
  self assert: task = anotherTask equals: false.
  anotherTask description: description.
  self assert: task = anotherTask equals: true.