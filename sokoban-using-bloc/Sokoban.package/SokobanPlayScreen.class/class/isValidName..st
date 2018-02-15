utility
isValidName: aString
	"Tests whether the string may be used as a highscore name of player."

	^ aString notEmpty
		and: (aString allSatisfy: [ :each | (each isSeparator or: each = $,) not ])