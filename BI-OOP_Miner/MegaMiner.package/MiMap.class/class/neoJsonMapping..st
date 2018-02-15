instance creation
neoJsonMapping: aMapper
	^ aMapper
		for: self
		customDo: [ :mapping | 
			mapping
				reader: [ :reader | 
					| portal height width blocks|
					reader
						parseMapKeysDo: [ :key | 
							key = 'height'
								ifTrue: [ height := reader next ] .
							key = 'width'
								ifTrue: [ width := reader next ] .
							key = 'blocks'
								ifTrue: [ reader listClass: OrderedCollection. blocks := reader next ] .
							key = 'portal'
								ifTrue: [ portal := reader nextAs: MiPortal ] ]. 
				self blocks: (self arrayToMatrix: blocks with: width height:height) portal: portal 					
				
				 	 ] ]