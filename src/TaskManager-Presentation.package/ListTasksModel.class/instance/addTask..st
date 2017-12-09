private
addTask: aTaskBO
	| addTaskModel |

	addTaskModel := AddTaskModel new.
	addTaskModel service: service.
	addTaskModel taskBO: aTaskBO.
	aTaskBO id notNil
		ifTrue: [addTaskModel buttonAdd: 'Update Task'].
	addTaskModel updateWidgets.
	
	addTaskModel openWithSpec.
	
	addTaskModel buttonAdd whenActionPerformedDo: [ 
		listTasks items: service findAll.
		self updateTaskOverview.
		listTasks resetSelection
	].

	addTaskModel window modalRelativeTo: self.