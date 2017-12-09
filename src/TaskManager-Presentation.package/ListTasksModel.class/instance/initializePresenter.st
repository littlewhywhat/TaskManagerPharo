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

	listTasks whenSelectedItemChanged: [ 
		self updateTaskButtons.
		self updateTaskOverview
	].

  self updateTaskButtons.