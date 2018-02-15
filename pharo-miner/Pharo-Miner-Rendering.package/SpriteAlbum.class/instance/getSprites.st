accessing
getSprites
	sprites ifNil: [ sprites := Dictionary new ].
	^ sprites