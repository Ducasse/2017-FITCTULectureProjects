setter
setMax: anInteger
	"If we change max to lesser value than actual value is, the actual value will be changed to this new value as well. 
	If the new value is lesser than min, than the min and the new max value will switch, so the max = min and min = new value"

	max < anInteger
		ifFalse: [ min > anInteger
				ifTrue: [ self setMax: self getMin.
					self setMin: anInteger ]
				ifFalse: [ actualValue > anInteger
						ifTrue: [ actualValue := anInteger.
							max := anInteger ]
						ifFalse: [ max := anInteger ] ] ]
		ifTrue: [ max := anInteger ]