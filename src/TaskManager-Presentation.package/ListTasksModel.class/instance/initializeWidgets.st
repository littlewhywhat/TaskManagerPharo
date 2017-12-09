initialization
initializeWidgets
	"widget instantiation"

	listTasks := self newList.
	buttonAdd := self newButton.
	textInputDescription := self newTextInput.
	buttonEdit := self newButton.
	buttonRemove := self newButton.
	
	"widget configuration"
	
	listTasks
		items: (service findAll);
		displayBlock: [ :item | item name ].
	
	buttonAdd
		label: 'Add Task'.
	
	textInputDescription
		text: nil;
		disable.
	
	buttonEdit
		label: 'Edit Task'.
	
	buttonRemove
		label: 'Remove Task'.
		
	"specification of order of focus"
	
	self focusOrder
		add: buttonAdd;
		add: buttonRemove;
		add: buttonEdit;
		add: listTasks;
		add: textInputDescription.
	