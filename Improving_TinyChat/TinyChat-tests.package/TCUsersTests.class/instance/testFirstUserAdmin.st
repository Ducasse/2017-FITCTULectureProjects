tests
testFirstUserAdmin
|server user1 result|
server := TCServer startOn: 8081.
user1 := TinyChat connect: 'localhost' port: 8081  login: 'Tomas'.
result := 'Tomas - Admin
'.
self assert: ((server usersGet) asString  = result). 
user1 console closeWindow.
TCServer stopAll.
 
	
