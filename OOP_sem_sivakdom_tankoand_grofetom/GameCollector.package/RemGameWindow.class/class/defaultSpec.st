specs
defaultSpec
	^ SpecColumnLayout composed
	newRow: [ :row | row add: #text ];
	newRow: [ :row | row add: #yesButton; add: #noButton. ] height: 50;
	yourself.