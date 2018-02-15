*Pharo-Miner-Engine
magnitudeInDirection: aPoint
	(self = (0@0) or: [ aPoint = (0@0) ]) ifTrue: [ ^0 ].
	^ self magnitude * self normalized dotProduct: aPoint normalized 