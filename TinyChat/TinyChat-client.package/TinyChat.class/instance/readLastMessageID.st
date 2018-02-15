private
readLastMessageID
	| id |
	id := (ZnClient new url: self cmdLastMessageID; get) asInteger.
	id = 0 ifTrue: [  id := 1 ].
	^ id