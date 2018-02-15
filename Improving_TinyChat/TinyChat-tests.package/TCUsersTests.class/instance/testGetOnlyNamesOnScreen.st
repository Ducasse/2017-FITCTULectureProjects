tests
testGetOnlyNamesOnScreen
|server user1  user2 result1 result2|
TCServer stopAll .
server := TCServer startOn: 8081.
user1 := TinyChat connect: 'localhost' port: 8081  login: 'Tomas'.
user2 := TinyChat connect: 'localhost' port: 8081  login: 'Petr'.

result1 := 'Tomas,Petr'.
result2 := 'Petr,Tomas'.

self assert: ((server usersPrintOnScreen = result1) | (server usersPrintOnScreen = result2)). 
user1 console closeWindow.
user2 console closeWindow.

TCServer stopAll .
 
	
