opening
close
	Instance ifNil: [ Instance := self basicNew ].
	Instance window ifNil: [ Transcript show: 'Window is NIL'; cr. Opened := false ].
	Opened ifNil: [ Opened := false ].
	Opened ifTrue: [ Instance close. Opened := false ] ifFalse: [ Transcript show: 'The game window is already closed!'; cr ]
