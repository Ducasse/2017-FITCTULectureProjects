input
setKey: aKey state: aKeyState
	(keys at: aKey ifAbsent: [ ^ self ])
		changeTo: aKeyState