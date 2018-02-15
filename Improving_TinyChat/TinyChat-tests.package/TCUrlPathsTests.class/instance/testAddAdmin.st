tests
testAddAdmin
|pathObject url result|

result := 'http://:8080/users/add/admin'.
pathObject := TCWebPath new.
pathObject url: 'http://:8080'.
url :=  pathObject cmdNewUserAdmin.
self assert: (url = result).