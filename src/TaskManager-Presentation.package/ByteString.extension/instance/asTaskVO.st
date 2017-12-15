*TaskManager-Presentation
asTaskVO
  ^ ( NeoJSONReader on: self readStream)
	   for: Date 
	     customDo: [ :mapping | mapping decoder: [ :string | Date fromString: string ] ];
	for: TaskVO do: [ :mapping | 
		 (mapping mapInstVars).
      (mapping mapInstVar: #date) valueSchema: Date. ];
   nextAs: TaskVO.