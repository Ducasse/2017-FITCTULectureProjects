tests
testAsString
	|state1 state2 state3|
	state1 := GameState new.
	state2 := GameState new.
	state3 := GameState new.
	state1 setOwned.
	state2 setSold.
	state3 setWishlist.
	^ self assert: (state1 asString = 'Owned') & (state2 asString = 'Sold') & (state3 asString = 'Wishlist').