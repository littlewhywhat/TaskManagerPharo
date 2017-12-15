specs
defaultSpec
	"configure widget placement"

	^ SpecLayout composed
		newRow: [ :row | row 
			newColumn: [ :column | column add: #buttonAdd ] left: 0 right: 0.75;
			newColumn: [ :column | column add: #buttonRemove ] left: 0.25 right: 0.5;
			newColumn: [ :column | column add: #buttonEdit ] left: 0.5 right: 0
		] top: 0 bottom: 0.9;
		newRow: [ :row | row 
			newColumn: [ :column | column add: #listTasks] left: 0 right: 0.5;
			newColumn: [ :column | column
				newRow: [ :anotherRow | anotherRow add: #textInputDescription ] top: 0 bottom: 0.2;
				newRow: [ :anotherRow | anotherRow add: #textInputDate ] top: 0.8 bottom: 0
			] left: 0.5 right: 0
		] top: 0.1 bottom: 0;
		yourself