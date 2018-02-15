actions
moveOn: aMiner to: aPosition
	"Answers a response to moveOn action. If aPosition is not in map's bounds, the CannotMoveResponse is returned."
	| holder |
	holder := blocks at: aPosition y at: aPosition x ifInvalid: nil.
	^ holder
		ifNil: [ MiCannotMoveResponse new ]
		ifNotNil: [ holder moveOn: aMiner ]