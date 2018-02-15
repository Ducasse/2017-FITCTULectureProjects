AI
AIValue
	| value |
	value := 0.
	self getUnitList
		do: [ :unit | value := value + (unit playerOwner isAI * unit determineAIValue) ].
^value