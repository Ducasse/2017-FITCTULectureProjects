converting
asString 
	^ String
		streamContents: [ :stream | 
			stream
				nextPutAll: 'User screen name:'; crlf; tab;
				nextPutAll: self screenName; crlf; crlf;
				nextPutAll: 'Full name:'; crlf; tab;
				nextPutAll: self fullName; crlf; crlf;
				nextPutAll: 'ID:'; crlf; tab;
				nextPutAll: (self id asString); crlf; crlf;
				nextPutAll: 'Description:'; crlf; tab;
				nextPutAll: self description; crlf; crlf;
				nextPutAll: 'Url:'; crlf; tab;
				nextPutAll: self url; crlf; crlf;
				nextPutAll: 'Location:'; crlf; tab;
				nextPutAll: self location; crlf; crlf;
				nextPutAll: 'Time zone:'; crlf; tab;
				nextPutAll: self timeZone asString; crlf; crlf;
				crlf. ].