*TaskManager-Presentation
asTaskBO
	^ ( NeoJSONReader on: self readStream)
	   for: Date 
	     customDo: [ :mapping | mapping decoder: [ :string | Date fromString: string ] ];
	   for: Task do: [ :mapping | 
		  (mapping mapInstVars).
		  (mapping mapInstVar: #date) valueSchema: Date.
		];
	   for: TaskBO do: [ :mapping | 
      (mapping mapInstVar: #task) valueSchema: Task.];
   nextAs: TaskBO