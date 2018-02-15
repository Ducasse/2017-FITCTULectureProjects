specs
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :row | row add: #text ];
		yourself