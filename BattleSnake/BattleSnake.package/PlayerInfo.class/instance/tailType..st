accessing
tailType: aTailType
	(self class isTailTypellowed:  aTailType)
		ifFalse: [ ^ self error: 'Given TailType:' , aTailType asString , ' not allowed' ].
	tail_type := aTailType