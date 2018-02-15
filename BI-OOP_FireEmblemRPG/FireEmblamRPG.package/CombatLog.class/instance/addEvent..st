adding
addEvent: anEvent
	(self invertLines: anEvent)
		do: [ :each | 
			(content size > 14)
				ifTrue: [ self shiftLines ].
			content addFirst: each asString ].
	self updateLines