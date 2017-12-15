convenience
putMapsToReadJSONin: jsonreader

  ^ jsonreader
	   for: Date 
	     customDo: [ :mapping | mapping decoder: [ :string | Date fromString: string ] ];
	for: self do: [ :mapping | 
		 (mapping mapInstVars).
      (mapping mapInstVar: #date) valueSchema: Date. ]; yourself.