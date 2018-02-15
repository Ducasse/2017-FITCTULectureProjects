tests-setter
testSetObject
| s o |

s := Square new.
o := Object new.
s setObject: o. 

self assert: (s getObject) equals: o.