specs
contactSpec
	^ SpecColumnLayout composed 
		newRow: [ :row | row add: #contactProfile ] height: 205;
		newRow: [ :row | row add: #callHistory ];
		yourself.