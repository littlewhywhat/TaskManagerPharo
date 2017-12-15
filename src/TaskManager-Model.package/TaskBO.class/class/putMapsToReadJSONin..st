convenience
putMapsToReadJSONin: jsonReader
  ^ jsonReader 
     for: Date 
	     customDo: [ :mapping | mapping decoder: [ :string | Date fromString: string ] ];
	   for: Task do: [ :mapping | 
		  (mapping mapInstVars).
		  (mapping mapInstVar: #date) valueSchema: Date.
		];
	   for: self do: [ :mapping | 
      (mapping mapInstVar: #task) valueSchema: Task.]; yourself.
  