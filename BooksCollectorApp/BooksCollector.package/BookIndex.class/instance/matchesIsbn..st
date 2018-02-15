finding
matchesIsbn: aPattern
	| col |
	col := OrderedCollection new.
	byIsbn keysDo: [ :key | (aPattern match: key) ifTrue: [ (byIsbn at: key) do: [ :book | col add: book ] ] ] .
	^col.