initialization
+ otherAttributes
	| result |
	result := self class new.
	
	attributes keysAndValuesDo: [ :key :value |
		result addValue: value + (otherAttributes getAttributeOfType: key) at: key
		 ].
	
	^ result.