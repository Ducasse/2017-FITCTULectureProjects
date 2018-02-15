printing
printUser: anUser
	^ String
		streamContents: [ :stream | 
			stream
				nextPutAll: 'User screen name:'; crlf; tab;
				nextPutAll: anUser screenName; crlf; crlf;
				nextPutAll: 'Full name:'; crlf; tab;
				nextPutAll: anUser fullName; crlf; crlf;
				nextPutAll: 'ID:'; crlf; tab;
				nextPutAll: (anUser id asString); crlf; crlf;
				nextPutAll: 'Description:'; crlf; tab;
				nextPutAll: anUser description; crlf; crlf;
				nextPutAll: 'Url:'; crlf; tab;
				nextPutAll: anUser url; crlf; crlf;
				nextPutAll: 'Location:'; crlf; tab;
				nextPutAll: anUser location; crlf; crlf;
				nextPutAll: 'Time zone:'; crlf; tab;
				nextPutAll: anUser timeZone asString; crlf; crlf;
				crlf. ].