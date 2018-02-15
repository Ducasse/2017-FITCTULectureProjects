getSet
hasNoMonster
	"Whether has any monster"
	|count|
	count := 0.
	
	monsterQueue do: [ :x | count := count + (x count) ].
	
	(count > 0)
		ifTrue: [ ^false ]
		ifFalse: [ ^true ]