tests
testRemoveUser
|server user1 result user2 |
TCServer stopAll .
server := TCServer startOn: 8081.
user1 := TinyChat connect: 'localhost' port: 8081  login: 'Tomas'.
user2 := TinyChat connect: 'localhost' port: 8081  login: 'Petr'.
result := 'Tomas - Admin
'.
user2 console closeWindow.
self assert: ((server usersGet) asString  = result). 
user1 console closeWindow.

TCServer stopAll .
 
	
