setter
setActualValue: anInteger
"if we change actual value to greater than max value, the actual value will be changed only to this max value"

	anInteger < min
		ifTrue: [ "TODO you are probably dead for health bar, but for experience bar this should never happen. We can maybe just allow less than min values, but want to discuss it first" ]
		ifFalse: [ anInteger > max
				ifTrue: [ actualValue := max ]
				ifFalse: [ actualValue := anInteger ] ]