accessing
testSetFirstName

|person|
person := Reader new.
person firstName: 'Honza'.

self assert: person firstName equals: 'Honza'