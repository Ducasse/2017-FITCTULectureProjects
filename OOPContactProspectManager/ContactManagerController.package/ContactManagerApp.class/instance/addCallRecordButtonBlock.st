blocks
addCallRecordButtonBlock
	^[ :d |
		AddContact new initializeWidgets;
		whenSelectedUserDo: (self addCallRecordBlock: d date);
		openWithUser: user]