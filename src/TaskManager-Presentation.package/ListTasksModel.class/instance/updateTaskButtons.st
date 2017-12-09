private
updateTaskButtons

	listTasks selectedItem notNil
		ifTrue: [ buttonRemove enabled: true. buttonEdit enabled: true ]
		ifFalse: [ buttonRemove enabled: false. buttonEdit enabled: false ]