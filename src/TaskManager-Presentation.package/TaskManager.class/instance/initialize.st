initialization
initialize
	super initialize.
	presents := { #spec -> ListTasksModel } asDictionary.
	services := { #local -> TaskService } asDictionary.
	repositories := { #temporary -> TaskRepository } asDictionary.
	present := (presents at: #spec) new.
	service := (services at: #local) new.
	repository  := (repositories at: #temporary) new.