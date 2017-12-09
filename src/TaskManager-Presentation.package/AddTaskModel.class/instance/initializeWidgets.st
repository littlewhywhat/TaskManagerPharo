initialization
initializeWidgets
	"widget instantiation"

	buttonAdd := self newButton.
	labelDescription := self newLabel.
	textInputDescription := self newTextInput.
	
	"widget configuration"

	buttonAdd
		label: 'Add Task'.

   labelDescription 
		label: 'Description'.
		
	textInputDescription
		text: nil;
		autoAccept: true.
		
	"focus order"
	
	self focusOrder 
		add: textInputDescription;
		add: buttonAdd.