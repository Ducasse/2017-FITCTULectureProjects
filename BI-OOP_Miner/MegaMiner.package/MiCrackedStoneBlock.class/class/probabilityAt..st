accessing
probabilityAt: aDepth
 ^	(aDepth < 0.5
		ifTrue: [ 1 - ( MiDirtBlock probabilityAt: aDepth) ]
		ifFalse: [1.5 * ( MiDirtBlock probabilityAt: aDepth)]) 