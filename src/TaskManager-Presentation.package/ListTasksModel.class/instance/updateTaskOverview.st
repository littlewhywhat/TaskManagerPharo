private
updateTaskOverview

	listTasks selectedItem notNil
		ifTrue: [ textInputDescription text: listTasks selectedItem description ]
		ifFalse: [ textInputDescription text: nil ]