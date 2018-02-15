specs
defaultSpec
	^ SpecColumnLayout composed
		newRow: [ :col | col add: #info ] height: 100;
		yourself