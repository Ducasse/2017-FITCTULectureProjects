specs
defaultSpec
	^ SpecColumnLayout composed  
		newRow: [ :row | row add: #buttonStart ] height: 30;
		newRow: [ :row | row add: #buttonExit ] height: 30;
		yourself