initialization
initializeWidgets
	"widget instantiation"

	buttonAdd := self newButton.
	buttonCancel := self newButton.
	labelName := self newLabel.
	textInputName := self newTextInput.
	labelDescription := self newLabel.
	textInputDescription := self newTextInput.
	
	"widget configuration"

	buttonAdd
		label: 'Add Task'.

	buttonCancel
		label: 'Cancel'.

	labelName
		label: 'Name'.

	textInputName
		autoAccept: true.

   labelDescription
		label: 'Description'.

	textInputDescription
		autoAccept: true.		

	"focus order"
	
	self focusOrder
		add: textInputName; 
		add: textInputDescription;
		add: buttonAdd;
		add: buttonCancel.
		
	self updateWidgets.