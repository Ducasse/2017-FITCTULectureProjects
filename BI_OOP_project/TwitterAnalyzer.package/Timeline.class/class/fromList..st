instance creation
fromList: aLinkedList
	| tb |
	tb := self new.
	tb fromList: aLinkedList.
	^ tb.