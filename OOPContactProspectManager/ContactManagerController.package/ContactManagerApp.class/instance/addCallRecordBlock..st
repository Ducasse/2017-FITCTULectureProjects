blocks
addCallRecordBlock: aDate
	^[ :c |
		user callHistory add: 
			(CallRecord new reciever: c username;
			date: aDate).
		user save.
		appWindow contactDetails callHistory sessionList items: (user callHistory).
		]