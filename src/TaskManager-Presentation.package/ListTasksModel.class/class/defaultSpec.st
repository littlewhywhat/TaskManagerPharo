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
			newColumn: [ :column | column add: #textInputDescription ] left: 0.5 right: 0
		] top: 0.1 bottom: 0;
		yourself