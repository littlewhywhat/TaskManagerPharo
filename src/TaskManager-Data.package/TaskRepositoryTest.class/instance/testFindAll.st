tests-searching
testFindAll
	| repo tasksCollection taskOne taskTwo |
	tasksCollection := OrderedCollection new.
	repo            := TaskRepository new.
	
	taskOne := Task new description: 'todo1'.
   taskTwo := Task new description: 'todo2'.
   
	repo add: taskOne.
	repo add: taskTwo.

	tasksCollection add: taskOne; add: taskTwo.

	self assert: repo findAll equals: tasksCollection.