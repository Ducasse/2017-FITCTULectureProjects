initialization
initialize
	key := 'ow7xjGmTPLQPwOI3wG5vHCs1S'.
	secret := 'zEQEif0ZEcBcqjstv8fCAbr0oRkicGn6X486ddxzx6LSUZ29np'.
	accessToken := '1883420250-O74EIoMWtcZV9N7R05OpMnw6F3VBdm1NdDjdO0z'.
	accessSecret := 'xeRLwsdlbl4Vv6JKMhgef2bI8Pa39vqsvpqNGbLAeAhcW'.
	twitterSDK := TwitterSDK createWithConsumerKey: key
									consumerSecret: secret 
									accessToken: accessToken
									accessTokenSecret: accessSecret.
	^ self.
