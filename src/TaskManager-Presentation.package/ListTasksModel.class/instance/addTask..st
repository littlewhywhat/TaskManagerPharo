private
addTask: aTaskBO
	| addTaskModel |

	addTaskModel := AddTaskModel new.
	addTaskModel service: service.
	addTaskModel taskBO: aTaskBO.
	addTaskModel openWithSpec.
	
	addTaskModel buttonAdd whenActionPerformedDo: [ 
		listTasks items: service findAll.
		self updateTaskOverview.
		self updateTaskButtons.
		listTasks resetSelection
	].

	addTaskModel window modalRelativeTo: self.