updating
update
	"comment stating purpose of message"
	
	effects do: [ :each | each shouldRemove ifFalse: [ each update. ]. each shouldRemove ifTrue: [ effects remove: each ] ].
	
	
	(self dead and: diedAlready not) ifTrue: [ self die ].