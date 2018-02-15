typing/selecting keys
search: aPattern
	| results |
	results := OrderedCollection new.
	self contactList do: [ :each |
			(('*',aPattern,'*') match: (each asString)) ifTrue: [ results addLast: each ]
		].
	^ results.