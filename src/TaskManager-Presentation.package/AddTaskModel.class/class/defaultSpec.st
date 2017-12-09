specs
defaultSpec
	"configure widget layout"

	^ SpecLayout composed
		newRow: [ :row | row add: #labelName ] top: 0 bottom: 0.9;
		newRow: [ :row | row add: #textInputName ] top: 0.1 bottom: 0.8;
		newRow: [ :row | row add: #labelDescription ] top: 0.2 bottom: 0.7;
		newRow: [ :row | row add: #textInputDescription] top: 0.3 bottom: 0.2;
		newRow: [ :row | row 
			newColumn: [ :column | column add: #buttonAdd ] left: 0 right: 0.5;
			newColumn: [ :column | column add: #buttonCancel ] left: 0.5 right: 0
		] top: 0.8 bottom: 0;
		yourself