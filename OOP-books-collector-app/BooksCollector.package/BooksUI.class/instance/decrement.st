action
decrement
	booksList selectedItem isNil ifFalse: [
		ZnClient new
 			url: self url, '/books/', booksList selectedItem id asString, '/decr';
 			put.
		self refreshBooksList.
	].