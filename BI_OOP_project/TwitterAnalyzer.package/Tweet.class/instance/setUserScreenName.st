initialization
setUserScreenName
	(tweet includesKey: 'user')
		ifTrue: [ ((tweet at: 'user') includesKey: 'screen_name')
			ifTrue: [ name := ((tweet at: 'user') at: 'screen_name') asString. ]. ].
	name := ''.