tests - converting
testAsString
	|platform|
	platform := GamePlatform new.
	platform platformName: 'XBOX ONE'.
	^ self assert: platform asString equals: 'XBOX ONE'.