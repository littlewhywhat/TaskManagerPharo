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
		displayBlock: [ :item |
			(item description size) > 16
				ifTrue: [ ((item description) copyFrom: 1 to: 16) , ' ...']
				ifFalse: [ item description ].
		].
	
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
	