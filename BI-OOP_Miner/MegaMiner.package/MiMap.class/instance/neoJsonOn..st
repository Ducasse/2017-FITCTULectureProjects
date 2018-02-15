accessing
neoJsonOn: aWriter
	aWriter
		for: self class
			do: [ :mapping | 
			(mapping mapInstVar: #portal) valueSchema: self portal class.
			(mapping mapAccessors: #(#height #width)).
			(mapping mapInstVar: #blocks) valueSchema: #BlocksMatrix ];
		
		for: #BlocksMatrix customDo: [ :mapping | mapping listOfType: OrderedCollection andElementSchema: #Block ];
	 	for: #Block customDo: [ :mapping | mapping encoder: [ :object | object ] ];
		nextPut: self portal.