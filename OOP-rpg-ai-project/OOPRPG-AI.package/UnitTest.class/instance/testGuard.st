tests
testGuard
	"comment stating purpose of message"


	| b c|
	
	Transcript show: '-----Running Guard test.-----'.
Transcript cr.
b := Unit new.
c := Unit new.
b nickname: 'B'.
c nickname: 'C'.
b def: 5.
self assert: b def equals: 5.
c def: 6.
self assert: c def equals: 6.
c guard: b.
self assert: b def equals: 11.
c update.
c update.
self assert: b def equals: 5.