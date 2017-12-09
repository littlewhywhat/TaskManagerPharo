initialization
initializePresenter
	"initialize presenter"

	self updateButtonAdd.
	textInputName whenTextIsAccepted: [ self updateButtonAdd ]. 
	textInputDescription whenTextIsAccepted: [self updateButtonAdd ].

	buttonAdd action: [
		taskBO id notNil
			ifTrue: [ | aTaskVO |
				aTaskVO := TaskVO new
				id: taskBO id;
				name: taskBO name;
				description: taskBO description.
				service save: aTaskVO ]
			ifFalse: [ service add: (TaskVO new
				name: taskBO name;
				description: taskBO description)].
		self window delete.
	].

	buttonCancel action: [ 
		self window delete.
	].

  textInputDescription whenTextChanged: [ 
		self taskBO description: (textInputDescription text).	  
	].

  textInputName whenTextChanged: [ 
		self taskBO name: (textInputName text).	  
	].