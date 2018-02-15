initialize
defaultSpec
	<spec: #default>
    
	^ SpecLayout composed
		newColumn: [ :c | 
			c
				add: #list;
				add: #input height: 30 .
				"add: #button height: 30"
			];
		yourself
