tests
testAddCasualUser
|pathObject url result|

result := 'http://:8080/users/add/casual'.
pathObject := TCWebPath new.
pathObject url: 'http://:8080'.
url :=  pathObject cmdNewUserCasual.
self assert: (url = result).