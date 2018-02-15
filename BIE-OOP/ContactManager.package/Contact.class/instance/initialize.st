initialization
initialize
	property := Dictionary new.
	self class defaultproperty do: [ :key | property at: key put: nil ].
	id := 0.