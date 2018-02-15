tests
testGetUsersUrl
|pathObject url result|

result := 'http://:8081/users'.
pathObject := TCWebPath new.
pathObject url: 'http://:8081'.
url :=  pathObject cmdGetUsers.
self assert: (url = result).