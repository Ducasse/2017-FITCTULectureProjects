accessing
getBehaviour: aClass
	"Fetch my first behaviour with class or super class of aClass"
	| collection |
	collection := self getBehaviours: aClass.
	collection ifEmpty: [ ^nil ] ifNotEmpty: [ ^collection first ]