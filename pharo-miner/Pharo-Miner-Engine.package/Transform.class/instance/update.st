updating
update
	super update.
	changed ifTrue: [ self gameObject announcer announce: RelocationEvent ].
	changed := false