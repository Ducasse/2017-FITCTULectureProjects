finding
matchesTitle: aPattern
	| col |
	col := OrderedCollection new.
	byTitle keysDo: [ :key | (aPattern match: key) ifTrue: [ (byTitle at: key) do: [ :book | col add: book ] ] ] .
	^col.