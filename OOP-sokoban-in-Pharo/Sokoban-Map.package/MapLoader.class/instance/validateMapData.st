validation
validateMapData
	^ ( map isNotNil and: [ self containsOnlyValidChars and: [ self mapStructureIsOk ]] )
