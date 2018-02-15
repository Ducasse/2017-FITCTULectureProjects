blocks
deleteCallRecordButtonBlock
	^[ :e |
		user callHistory remove: e callRecord.
		user save.
		appWindow contactDetails callHistory 		sessionList items: (user callHistory).
		]