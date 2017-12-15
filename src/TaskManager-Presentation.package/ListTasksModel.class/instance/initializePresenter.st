initialization
initializePresenter
	"initialize presenter"

   buttonAdd action: [ self addTask: nil asTaskBO ].

	buttonEdit action: [ 
		self addTask: listTasks selectedItem deepCopy.
		self updateTaskOverview ].
	
	buttonRemove action: [ 
		self removeTask: listTasks selectedItem deepCopy.
	].

	buttonCompleted action: [ 
		((listTasks selectedItem) completed) 
			ifTrue: [ (listTasks selectedItem) completed: false ]
			ifFalse: [ (listTasks selectedItem) completed: true ].
		self updateTaskOverview.
		listTasks resetSelection
	].

	listTasks whenSelectedItemChanged: [ 
		self updateTaskButtons.
		self updateTaskOverview
	].

  self updateTaskButtons.