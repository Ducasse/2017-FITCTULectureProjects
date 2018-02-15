accessing
setDate
	(tweet includesKey:  'created_at')
			ifTrue: [ date := tweet at: 'created_at' ] 
			ifFalse: [ date := 'unknown' ].
	^ self.