initialization
addValue: value at: attributeName
	| currentValue |
	
	currentValue := attributes at: attributeName.
	currentValue := currentValue + value.
	
	attributes at: attributeName put: currentValue   
	