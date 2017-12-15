private
updateTaskOverview

	listTasks selectedItem notNil
		ifTrue: [ textInputDescription text: listTasks selectedItem description.
			textInputDate text: listTasks selectedItem date ]
		ifFalse: [ textInputDescription text: ''.
			textInputDate text: '' ]