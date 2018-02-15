finding
matchesAuthor: aPattern
	| col |
	col := OrderedCollection new.
	byAuthor keysDo: [ :key | (aPattern match: key) ifTrue: [ (byAuthor at: key) do: [ :book | col add: book ] ] ] .
	^col.