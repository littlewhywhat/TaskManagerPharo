running
run
	"Run the main application"

	| teapot manager |
	manager := Manager new.
	manager addTask: (Task newName: 'Do nothing' newDescription: 'My second favorite task' newDeadline: 'Next week'  newDifficulty: 'Very hard').

	teapot := Teapot configure: { 
	    #defaultOutput -> #json.
	    #port -> 8002.
	}.
	
	teapot 
	    GET: '/tasks' -> manager tasks;
	start.
	