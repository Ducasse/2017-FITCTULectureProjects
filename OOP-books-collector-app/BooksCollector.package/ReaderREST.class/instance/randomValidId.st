accessing
randomValidId
	| ret |
	ret:=self randomId.
	[ self readers includes: ret. ] whileTrue: [ ret:= self randomId. ].
	^ ret