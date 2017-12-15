tests-comparing
testEquals
  | task anotherTask description |
  description := 'todo'.
  task := Task new.
  anotherTask := Task new.
  self assert: task = anotherTask equals: true.
  task description: description.
  self deny: task = anotherTask.
  anotherTask description: description.
  self assert: task = anotherTask equals: true.