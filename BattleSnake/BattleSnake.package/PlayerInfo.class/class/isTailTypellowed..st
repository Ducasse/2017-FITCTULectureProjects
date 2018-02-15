accessing
isTailTypellowed: aTailType
	| allowed |
	allowed := {'small-rattle' . 'round-bum' . 'regular' . 'freckled' .'pixel' . 'fat-rattle' . 'curled' . 'block-bum'}.
	
	^ allowed anySatisfy:  [ :i | i = aTailType ].