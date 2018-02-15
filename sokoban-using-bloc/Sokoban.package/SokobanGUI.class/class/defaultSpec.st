specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :row | row add: #mainMenu ] origin: 0.25 @ 0.25 corner: 0.75 @ 0.75;
		yourself