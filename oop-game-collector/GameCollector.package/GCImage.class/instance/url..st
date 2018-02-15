accessing
url: anObject

	url := anObject asZnUrl.
	self url isHttp | self url isHttps
		ifTrue: [ self image: (self fromUrl: self url) ]
		ifFalse: [ self image: self defaultImage ]