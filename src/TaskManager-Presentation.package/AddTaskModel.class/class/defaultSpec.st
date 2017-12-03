specs
defaultSpec
	"configure widget layout"

	^ SpecLayout composed
		newRow: [ :row | row add: #labelDescription ] top: 0 bottom: 0.9;
		newRow: [ :row | row add: #textInputDescription ] top: 0.1 bottom: 0.2;
		newRow: [ :row | row add: #buttonAdd ] top: 0.8 bottom: 0;
		yourself