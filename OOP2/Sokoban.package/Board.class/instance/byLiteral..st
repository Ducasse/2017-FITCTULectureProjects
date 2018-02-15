accessing
byLiteral: literal
	literal = 'f'  ifTrue: [ ^(Floor new) ].
	literal = 't'  ifTrue: [ ^(Target  new) ].
	literal = 'w'  ifTrue: [ ^(Wall new) ].
	literal = 'b'  ifTrue: [ ^(Box new) ].
	literal = 'p'  ifTrue: [ ^(Player new) ].
	^nil.