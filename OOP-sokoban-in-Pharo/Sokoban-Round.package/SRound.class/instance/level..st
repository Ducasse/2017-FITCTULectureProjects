initialization
level: aLevel
	"load level from file and start round - must be called after seting of graphic, menu and map instances!"

	| rm rmListofLevels |
	graphicInstance setTextstrip: 'Game started!'.

	"check if instances are setted"
	graphicInstance isNil | menuInstance isNil | mapInstance isNil
		ifTrue: [ ^ nil ].

	"set level and load map"
	level := aLevel.
	rmListofLevels := mapInstance listLevels.
	(rmListofLevels isMemberOf: Array)
		ifFalse: [ "show error"
			graphicInstance setTextstrip: 'Load map error: ' , rmListofLevels asString.
			^ self ].
	"check map existing"
	"rm := self receivedMapEXAMPLE."
	rm := mapInstance loadLevel: (rmListofLevels at: aLevel).
	"check loaded map"
	(rm isMemberOf: Array)
		ifTrue: [ "continue" self map: rm ]
		ifFalse: [ "show error" graphicInstance setTextstrip: 'Load map error: ' , rm asString ]