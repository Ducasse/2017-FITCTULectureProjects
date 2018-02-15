tests
testProperty
	|dummy contact|
	dummy := 'Test'.
	contact := Contact new.
	(contact property keys) do: [ :each | contact property: each put: dummy ].
	self assert: ((contact property keys) inject: true into: [ :flag :property | flag and: ((contact property: property) = dummy) ] ).