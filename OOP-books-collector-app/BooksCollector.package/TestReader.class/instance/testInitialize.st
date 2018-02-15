initialize
testInitialize

|person|
person := Reader new.

self assert: person firstName equals: ''.
self assert: person lastName equals: ''.
self assert: person nationality equals: ''.
self assert: person birthYear equals: Date today year.
self assert: person books size equals: 0.