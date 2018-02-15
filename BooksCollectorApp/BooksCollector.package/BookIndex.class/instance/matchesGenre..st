finding
matchesGenre: aPattern
	| col |
	col := OrderedCollection new.
	byGenre keysDo: [ :key | (aPattern match: key) ifTrue: [ (byGenre at: key) do: [ :book | col add: book ] ] ] .
	^col.