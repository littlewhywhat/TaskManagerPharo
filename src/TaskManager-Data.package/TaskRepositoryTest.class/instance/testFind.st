tests-searching
testFind
  | aTask |
  aTask := Task new id: 0.
  aTask := notEmptyRepository find: aTask.
  self assert: aTask equals: aTaskWithIdZero.
  