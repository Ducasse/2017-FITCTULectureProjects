accessing
testSetBirthYear

|person|
person := Reader new.
person birthYear: 1999.

self assert: person birthYear equals: 1999