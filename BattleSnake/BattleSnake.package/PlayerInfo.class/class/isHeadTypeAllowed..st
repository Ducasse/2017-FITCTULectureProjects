accessing
isHeadTypeAllowed: aHeadType
	| allowed |
	allowed := {'bendr' . 'dead' . 'fang' . 'pixel' . 'regular' . 'safe' . 'shades' . 'smile'.
	'tongue'}.
	
	^ allowed anySatisfy:  [ :i | i = aHeadType ].