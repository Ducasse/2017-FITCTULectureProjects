tests-setter
testHash
self assert: (Square new: (1@3) hash) equals: (Square new: (1@3) hash).
self assert: (Square new: (1@1) hash) equals: (Square new: (1@1) hash).
self assert: (Square new: (3@5) hash) equals: (Square new: (3@5) hash).
self assert: (Square new: (6@3) hash) equals: (Square new: (6@3) hash).

((Square new: (1@3) hash) = (Square new: (3@1) hash)) ifTrue: [self assert: false].
((Square new: (1@1) hash) = (Square new: (2@2) hash)) ifTrue: [self assert: false].
((Square new: (3@5) hash) = (Square new: (3@3) hash)) ifTrue: [self assert: false].
