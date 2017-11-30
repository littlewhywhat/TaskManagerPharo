adding
save: aTaskVO
	"Saves a task"
	
	| aTask |
	aTask := Task new description: aTaskVO description.
	repo add: aTask.
	
	^ TaskBO new wrap: aTask.

	