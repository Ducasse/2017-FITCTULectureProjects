tests - accessing
testPlatformName
	|platform|
	platform := GamePlatform new.
	platform platformName: 'Nintendo'.
	^ self assert: platform platformName equals: 'Nintendo'.