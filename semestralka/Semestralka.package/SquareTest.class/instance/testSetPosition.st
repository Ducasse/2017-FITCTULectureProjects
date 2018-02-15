tests-setter
testSetPosition
| s |

s := Square new.
s setPosition: (1@1). 

self assert: (s getPosition) equals: (1@1).