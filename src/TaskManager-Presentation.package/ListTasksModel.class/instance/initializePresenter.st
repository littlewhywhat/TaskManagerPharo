initialization
initializePresenter
	"initialize presenter"

   buttonAdd action: [ 
		| addTaskModel |
		addTaskModel := AddTaskModel new.

		addTaskModel service: service.
		addTaskModel openWithSpec.

		addTaskModel buttonAdd whenActionPerformedDo: [ 
			addTaskModel window delete.
			listTasks items: service findAll
		].
	
		addTaskModel window modalRelativeTo: self.
	].

	listTasks whenSelectedItemChanged: [ 
		(listTasks selectedItem) notNil
			ifTrue: [textInputDescription text: listTasks selectedItem description ]
			ifFalse: [textInputDescription text: nil. buttonRemove enabled: false. buttonEdit enabled: false]
	].