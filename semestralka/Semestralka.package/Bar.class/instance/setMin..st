setter
setMin: anInteger
	"If  we change minimal value to greater than actual value is, actual value is set to this value as well.
	If the new value is greater than max, then we switch the max and min. So min = max and max = newValue"

	min > anInteger
		ifFalse: [ max < anInteger
				ifTrue: [ self setMin: self getMax.
					self setMax: anInteger ]
				ifFalse: [ actualValue < anInteger
						ifTrue: [ actualValue := anInteger.
							min := anInteger ]
						ifFalse: [ min := anInteger ] ] ]
		ifTrue: [ min := anInteger ]