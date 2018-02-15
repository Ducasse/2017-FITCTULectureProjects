private
readLastMessageID
	| id |
	accesWebPath := webPath cmdLastMessageID.
	id := (ZnClient new url: self accesWebPath ; get) asInteger.
	id = 0 ifTrue: [  id := 1 ].
	^ id