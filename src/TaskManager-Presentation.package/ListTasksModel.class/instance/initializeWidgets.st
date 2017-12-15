initialization
initializeWidgets
	"widget instantiation"

	listTasks := self newList.
	buttonAdd := self newButton.
	textInputDescription := self newTextInput.
	textInputDate := self newTextInput.
	buttonEdit := self newButton.
	buttonRemove := self newButton.
	buttonCompleted := self newButton.
	
	"widget configuration"
	
	listTasks
		items: (service findAll);
		displayBlock: [ :item | item name ];
		backgroundColorBlock: [ :item | item completed 
			ifTrue: [Color named: 'gray'] 
			ifFalse: [Color named: 'orange']].
	
	buttonAdd
		label: 'Add Task'.
	
	textInputDescription
		text: nil;
		disable.
		
	textInputDate
		text: nil;
		disable.
	
	buttonEdit
		label: 'Edit Task'.
	
	buttonRemove
		label: 'Remove Task'.
		
	buttonCompleted 
		label: 'Complete';
		enabled: false.
	"specification of order of focus"
	
	self focusOrder
		add: buttonAdd;
		add: buttonRemove;
		add: buttonEdit;
		add: listTasks;
		add: textInputDescription;
		add: textInputDate;
		add: buttonCompleted   
	