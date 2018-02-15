tests
testPrintOn
	|state1 state2 state3|
	state1 := GameState new.
	state2 := GameState new.
	state3 := GameState new.
	state1 setOwned.
	state2 setSold.
	state3 setWishlist.
	^ self assert: (state1 printString = 'Owned') & (state2 printString = 'Sold') & (state3 printString = 'Wishlist').