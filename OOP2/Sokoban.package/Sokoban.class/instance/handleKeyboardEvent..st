controlling
handleKeyboardEvent: event
	| ch |
	ch := event char asString.
	ch = 'w'
		ifTrue: [ self move: Direction up ].
	ch = 'a'
		ifTrue: [ self move: Direction left ].
	ch = 's'
		ifTrue: [ self move: Direction down ].
	ch = 'd'
		ifTrue: [ self move: Direction right ].
	ch = 'r'
		ifTrue: [ self restartCurrentLevel ].
	ch = 'm'
		ifTrue: [ presenter presentMenu ]