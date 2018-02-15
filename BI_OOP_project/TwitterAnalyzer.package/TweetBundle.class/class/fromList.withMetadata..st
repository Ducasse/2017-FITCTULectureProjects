as yet unclassified
fromList: aLinkedList withMetadata: meta
	| tb |
	tb := self new.
	tb fromList: aLinkedList.
	tb metadata: meta.
	^ tb.