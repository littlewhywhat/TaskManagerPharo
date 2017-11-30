tests-comparing
testEquals
  | task anotherTask taskBO anotherTaskBO description |
  description := 'todo'.
  task        := Task new.
  anotherTask := Task new.

  taskBO        := TaskBO new wrap: task.
  anotherTaskBO := TaskBO new wrap: anotherTask.
  self assert: taskBO = anotherTaskBO equals: true.
  task description: description.
  self assert: task = anotherTask equals: false.
  anotherTask description: description.
  self assert: task = anotherTask equals: true.