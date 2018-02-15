finding
matchesYear: aPattern
	| col |
	col := OrderedCollection new.
	byYear keysDo: [ :key | (aPattern match: key) ifTrue: [ (byYear at: key) do: [ :book | col add: book ] ] ] .
	^col.