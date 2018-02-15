tests
testGenerateUnderground
	2 to: MiMap defaultHeight do: [ :i | 
		50
			timesRepeat: [ self assert: ((MiMap generateUnderground: i) inheritsFrom: MiNotPassableBlock) ] ]