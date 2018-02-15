accessing
testSetLastName

|person|
person := Reader new.
person lastName: 'Novak'.

self assert: person lastName equals: 'Novak'