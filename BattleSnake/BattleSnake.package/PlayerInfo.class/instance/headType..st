accessing
headType: aHeadType
	(self class isHeadTypeAllowed: aHeadType) ifFalse: [ ^ self error: 'Given headType:' , aHeadType  asString , ' not allowed' ].
	head_type := aHeadType