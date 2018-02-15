accessing
testSetNationality

|person|
person := Reader new.
person nationality: 'Czech'.

self assert: person nationality equals: 'Czech'