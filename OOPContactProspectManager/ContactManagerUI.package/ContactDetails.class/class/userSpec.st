specs
userSpec
	<spec: #default>
	^ SpecColumnLayout composed 
		newRow: [ :row | row add: #userProfile ] height: 310;
		newRow: [ :row | row add: #reminderList];
		yourself.