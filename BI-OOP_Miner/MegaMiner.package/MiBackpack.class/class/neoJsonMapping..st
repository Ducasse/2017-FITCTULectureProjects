instance creation
neoJsonMapping: aMapper
	^ aMapper
		for: self
		customDo: [ :mapping | 
			mapping
				reader: [ :reader | 
					| tier bag|
					reader
						parseMapKeysDo: [ :key | 
							key = 'tier'
								ifTrue: [ tier := reader next ] .
							key = 'bag'
								ifTrue: [ reader listClass: OrderedCollection. bag := reader next asBag ] ]. 
							"TODO - bag created with classes, net instances"
					self atTier: tier withBag: (bag collect: [:elem | elem asClass new]) asBag ] ]