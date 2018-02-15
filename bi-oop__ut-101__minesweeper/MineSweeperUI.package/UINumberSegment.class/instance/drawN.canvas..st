drawing
drawN: numeral canvas: aCanvas
	(numeral < 0) | (numeral > 9) ifTrue: [ self error: 'Invalid numeral' ].
	numeral = 0 ifTrue: [ self draw0: aCanvas. ^ self ].
	numeral = 1 ifTrue: [ self draw1: aCanvas. ^ self ].
	numeral = 2 ifTrue: [ self draw2: aCanvas. ^ self ].
	numeral = 3 ifTrue: [ self draw3: aCanvas. ^ self ].
	numeral = 4 ifTrue: [ self draw4: aCanvas. ^ self ].
	numeral = 5 ifTrue: [ self draw5: aCanvas. ^ self ].
	numeral = 6 ifTrue: [ self draw6: aCanvas. ^ self ].
	numeral = 7 ifTrue: [ self draw7: aCanvas. ^ self ].
	numeral = 8 ifTrue: [ self draw8: aCanvas. ^ self ].
	numeral = 9 ifTrue: [ self draw9: aCanvas ]