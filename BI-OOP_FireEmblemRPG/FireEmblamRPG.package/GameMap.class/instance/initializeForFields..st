initialization
initializeForFields: aCollectionOfFields
	|size|
	
	size := self getHeigth.
	self
		assert: [ aCollectionOfFields size = size ] 
		description: [ 'Amount of rows! given: ', aCollectionOfFields size asString, ', expeced: ', size asString  ].

	cards := (aCollectionOfFields asArray
			collect: [ :row |
				size := self getWidth.
				self assert: [ row size = size ]
					description: [ 'Row! given: ', row size asString, ' expoected: ', size asString ].
				row asArray 
					collect: [ :aField |
						self
							assert: [ aField class = FieldStruct ]
							description: [ 'Field! expected: ', FieldStruct asString, ' given ', aField class asString  ].
						FieldModel new field: aField "FieldStruct"
					]
			]) flattened asOrderedCollection
				