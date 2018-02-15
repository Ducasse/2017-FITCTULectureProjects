resource accessing
getResourcesPath
	| rep |
	rep := self getIceRepository.
	rep = nil
		ifTrue: [ ^ '/resources/' ].
	^ (rep location )pathString , '/resources/'