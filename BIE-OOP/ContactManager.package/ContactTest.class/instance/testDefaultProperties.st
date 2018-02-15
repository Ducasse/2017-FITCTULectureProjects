tests
testDefaultProperties
	|dummy contact|
	contact := Contact new.
	dummy := Random new nextInt: 100.
	Contact defaultproperty do: [ :property | contact perform: ((property,':') asSymbol) with: dummy ].
	self assert: (Contact defaultproperty inject: true into: [ :flag :property | flag and: ((contact perform: (property asSymbol)) = dummy) ] ).