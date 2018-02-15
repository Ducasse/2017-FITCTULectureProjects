tests
testDetection
	|state|
	state := GameState new.
	state setWishlist.
	^ self assert: (state isOwned = false) & (state isSold = false) & (state isWishlist = true).