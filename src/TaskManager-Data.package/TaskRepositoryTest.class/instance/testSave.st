tests-saving
testSave
  | aTask |
  aTask := aTaskWithIdZero copy.
  notEmptyRepository save: aTask.
  self assert: (notEmptyRepository find: aTask) equals: aTaskWithIdZero.
  aTask description: 'new description'.
  notEmptyRepository save: aTask.
  self deny: (notEmptyRepository find: aTask) = aTaskWithIdZero.