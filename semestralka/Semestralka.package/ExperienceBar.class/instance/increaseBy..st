setting
increaseBy: anInteger
"increase experience bar actual value by value specified. If the actual value would be greater or equal than max value, will increase the level and generate new max value as well."
	| expGained dif |
	expGained := anInteger + self getActualValue.
	expGained < self getMax
		ifTrue: [ self setActualValue: expGained ]
		ifFalse: [ expGained = self getMax
				ifTrue: [ self levelUp ]
				ifFalse: [ dif := anInteger - (self getMax - self getActualValue).
					self levelUp.
					self increaseBy: dif ] ]