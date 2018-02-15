persistence
listAllKeys
	"See what is stored"

	| reslist |
	reslist := OrderedCollection new.
	self storage keysDo: [ :key | reslist add: key ].
	^ reslist