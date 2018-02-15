printing
printOn: aStream
	aStream nextPutAll: 'Level: ' , (level asString).
	aStream cr.
	aStream nextPutAll: (abilities asString).
	aStream cr.
	aStream nextPutAll: 'Experience: ' , (experience asString) , ' / ' , (experienceToNextLevel asString).  