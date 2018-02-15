opening
start
	<script: 'self start'>
	"Instance ifNil: [ Instance := self basicNew ].
	Instance window visibility ifNil: [ Transcript show: 'Window is OPNE NIL'; cr. Opened := false ].
	Opened ifNil: [ Opened := false ].
	Opened ifTrue: [ Transcript show: 'The game window is already opened!'; cr ] ifFalse: [ Instance open. Opened := true ]"
	
	Instance := self basicNew.
	Instance open.
