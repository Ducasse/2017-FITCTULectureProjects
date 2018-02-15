tests - printing
testPrintOn
	|platform|
	platform := GamePlatform new.
	platform platformName: 'XBOX 360'.
	^ self assert: platform printString equals: 'XBOX 360'.