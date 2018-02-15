accessing
url
	| array |
	array := nil.
	(user includesKey: 'entities')
		ifTrue: [ ((user at: 'entities') includesKey: 'url') 
				ifTrue: [ 
					(((user at: 'entities') at: 'url') includesKey: 'urls')
						ifTrue: [ array := (((user at: 'entities') at: 'url') at: 'urls'). ]
				 ] ].
	
	array isNil
		ifTrue: [ 
			^ ''.
			 ].
	array := array at: 1.
	(array includesKey: 'expanded_url')
		ifTrue: [ ^ array at: 'expanded_url'. ].
	^ ''.
	
	
	
	
	"| u |
	u := (user at: 'entities').
	u ifNil: [ ^ '' ].
	u := u at: 'url'.
	u ifNil: [ ^ '' ].
	u := u at: 'urls'.
	u ifNil: [ ^ '' ].
	u := u at: 1.
	u ifNil: [ ^ '' ].
	u := u at: 'expanded_url'.
	u ifNil: [ ^ '' ].
	^ u."