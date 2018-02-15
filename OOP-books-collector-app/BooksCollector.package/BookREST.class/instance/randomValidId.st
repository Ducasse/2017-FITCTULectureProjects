accessing
randomValidId
	| ret |
	ret:=self randomId.
	[ self books includes: ret. ] whileTrue: [ ret:= self randomId. ].
	^ ret.