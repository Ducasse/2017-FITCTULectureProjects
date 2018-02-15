instance creation
withMap: aMap
	| s |
	s := SRMapFromFile new.
	s map: aMap.
	^ s