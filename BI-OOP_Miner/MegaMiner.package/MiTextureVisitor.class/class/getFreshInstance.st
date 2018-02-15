accessing
getFreshInstance
	"if some changes are made, this method should be called to make changes visible for game
	YOU SHOULD NOT USE THIS METHOD MULTIPLE TIMES, it has huge performance impact"
	singleton := nil.
	^ self getInstance