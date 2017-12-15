tests-removing
testRemove
  | aTask |
  aTask := Task new id: 0.
  notEmptyRepository remove: aTask.
  self assert: (notEmptyRepository find: aTask) isNil.
  