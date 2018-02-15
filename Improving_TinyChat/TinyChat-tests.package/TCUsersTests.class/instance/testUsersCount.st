tests
testUsersCount
|server user1  user2 |
TCServer stopAll.
server := TCServer startOn: 8081.
user1 := TinyChat connect: 'localhost' port: 8081  login: 'Tomas'.
user2 := TinyChat connect: 'localhost' port: 8081  login: 'Petr'.

self assert: (server usersGetCount = 2). 
user1 console closeWindow.
user2 console closeWindow.

TCServer stopAll .
 
	
