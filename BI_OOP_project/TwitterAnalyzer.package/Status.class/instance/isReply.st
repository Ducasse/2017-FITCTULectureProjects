testing
isReply
	(tweet includesKey: 'in_reply_to_user_id')
	ifTrue: [ (tweet at: 'in_reply_to_user_id') ifNil: [ ^ false ] ifNotNil: [ ^ true ]. ]
	ifFalse: [ ^ false ].