tests
testMoreUsers
|server user1  user2 result1 result2|
TCServer stopAll .
server := TCServer startOn: 8081.
user1 := TinyChat connect: 'localhost' port: 8081  login: 'Tomas'.
user2 := TinyChat connect: 'localhost' port: 8081 login: 'Petr'.

result1 := 
'Tomas - Admin
Petr - Casual user
'.
result2 :=
'Petr - Casual user
Tomas - Admin
'.
self assert: (((server usersGet) asString  = result1) | ((server usersGet) asString  = result2) ). 
user1 console closeWindow.
user2 console closeWindow.

TCServer stopAll .
 
	
