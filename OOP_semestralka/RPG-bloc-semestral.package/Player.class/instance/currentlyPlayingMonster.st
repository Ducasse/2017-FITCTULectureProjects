getSet
currentlyPlayingMonster
	"Returns monster that is playing now and puts it to the end of queue"
	|m|
	m := monsterQueue at: 1.
	monsterQueue removeFirst.
	self addMonster: m.
	
	^m