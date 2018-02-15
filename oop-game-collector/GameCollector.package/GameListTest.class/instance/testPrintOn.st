tests - printing
testPrintOn
	|list|
	list := GameList new.
	list listName: 'moje hry'.
	^ self assert: list printString equals: 'moje hry'.