generating
generateSurface: aColumn
	"Answers a building (MiBuildingBlock subclass) or an empty surface block (MiSurfaceBlock), that should be generated on the surface at the given column. Buildings are centered and separated by empty blocks."

	| offset |
	offset := (self defaultWidth - buildings size) // 2.
	(aColumn between: offset + 1 and: offset + buildings size)
		ifTrue: [ ^ buildings at: aColumn - offset ].
	^ MiSurfaceBlock