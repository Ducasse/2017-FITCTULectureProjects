initialization
map: aMap
	"save received map - called automatically from level:"

	| rm |
	rm := SRMapFromFile withMap: aMap.
	receivedMap := rm.
	self init