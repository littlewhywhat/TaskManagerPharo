baseline
baseline: spec
	"standard baseline method to describe dependencies of TaskManager package"
	<baseline>
	
  	spec for: #common do: [
        spec package: 'TaskManager'.
        spec group: 'default' with: #('TaskManager') ]