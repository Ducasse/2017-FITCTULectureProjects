accessing
neoJsonMapping: aMapper
	^ aMapper
		for: self
			customDo: [ :mapping | 
			mapping
				reader: [ :reader | 
					| backpack cooling drill plate tank |
					reader
						parseMapKeysDo: [ :key | 
							key = 'backpack'
								ifTrue: [ backpack := reader nextAs: MiBackpack ].
							key = 'coolingUnit'
								ifTrue: [ cooling := reader nextAs: MiCoolingUnit  ].
							key = 'drill'
								ifTrue: [ drill := reader nextAs: MiDrill  ].
							key = 'plate'
								ifTrue: [ plate := reader nextAs: MiPlate  ].
							key = 'tank'
								ifTrue: [ tank := reader nextAs: MiTank  ] 				
								].
					self withBackpack: backpack coolingUnit: cooling drill: drill plate: plate tank: tank]].