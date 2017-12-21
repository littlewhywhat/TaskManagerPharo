searching
find: task
	^ Task selectOne: [ :each | each id = task id ]