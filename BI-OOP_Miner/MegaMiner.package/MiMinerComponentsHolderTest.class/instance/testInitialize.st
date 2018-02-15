tests-initialization
testInitialize
	| comp |
	comp := MiMinerComponentsHolder new.
	
	self assert: (comp backpack isNotNil).
	self assert: (comp coolingUnit  isNotNil).
	self assert: (comp drill  isNotNil).
	self assert: (comp plate  isNotNil).
	self assert: (comp tank isNotNil).