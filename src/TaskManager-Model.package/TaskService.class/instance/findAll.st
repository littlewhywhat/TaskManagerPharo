finding
findAll
	"find all existing tasks"
   
   | tasks |
   tasks := OrderedCollection new.
   repo findAll do: [ :each | tasks add: (TaskBO new wrap: each) ].
   ^ tasks.