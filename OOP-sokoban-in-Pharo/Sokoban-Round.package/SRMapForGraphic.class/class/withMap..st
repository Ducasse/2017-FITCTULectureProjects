instance creation
withMap: aMap
	| s |
	s := SRMapForGraphic new.
	s map: aMap.
	^ s