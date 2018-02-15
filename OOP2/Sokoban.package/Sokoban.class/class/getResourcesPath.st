class initialization
getResourcesPath
	| rep |
	rep := self getIceRepository.
	rep isNil ifTrue: [ ^ nil ].
	^ rep location pathString , '/resources/'