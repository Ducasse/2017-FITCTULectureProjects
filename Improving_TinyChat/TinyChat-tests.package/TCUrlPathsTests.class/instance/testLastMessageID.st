tests
testLastMessageID
|pathObject url result|

result := 'http://:8081/messages/count'.
pathObject := TCWebPath new.
pathObject url: 'http://:8081'.
url :=  pathObject cmdLastMessageID.
self assert: (url = result).