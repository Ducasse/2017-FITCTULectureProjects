accessing
setStatus
	(tweet includesKey:  'full_text')
			ifTrue: [ status := tweet at: 'full_text' ] 
			ifFalse: [ status := '' ].
	^ self.