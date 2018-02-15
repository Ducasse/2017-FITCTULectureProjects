tests - creating
testInitialize
	|platform|
	platform := GamePlatform new.
	^ self assert: platform platformName = ''.