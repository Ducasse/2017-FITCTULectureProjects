initialization
loadMinerObjectsFrom: aStream
	| res |
	res := OrderedCollection new.
	[ aStream atEnd ] whileFalse: [ res add: ((self lookupMinerClass: (aStream upTo: Character space) asSymbol) deserializeFrom: aStream) ].
	^ res
