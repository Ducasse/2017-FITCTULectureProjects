loading
loadMinerObjectClass
	^ (self lookupMinerClass: (stream upTo: Character space) asSymbol)