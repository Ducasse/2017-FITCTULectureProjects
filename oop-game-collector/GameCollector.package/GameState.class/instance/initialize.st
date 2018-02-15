initialization
initialize
	super initialize.
	StateStrings := #('Owned' 'Sold' 'Wishlist').
	state := self class owned.