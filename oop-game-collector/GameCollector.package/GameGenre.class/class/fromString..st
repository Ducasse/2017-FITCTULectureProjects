accessing
fromString: aString
|genre|
genre := GameGenre new.
genre genre: (GameGenre getIndex: aString).
^ genre