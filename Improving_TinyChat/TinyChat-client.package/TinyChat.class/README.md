I'm a chat client.  I can send messages to a server listening on a given host and port. 

I keep an index of the last message that I received from the server so that I can request the sequences of messages that I may have missed and that have been posted while my last connection. 

readMessages gets the new messages that have been posted since the last request.


TCServer stopAll.


|  tco tcs | 
TCServer startOn: 8080.
[tco := TinyChat connect: 'localhost' port: 8080 login: 'olivier'.
tco send: 'hello'.
(Delay forMilliseconds: 100) wait.
tco send: 'hello Stef'.
(Delay forMilliseconds: 2000) wait.
tco inspect.] fork.

[ 
tcs := TinyChat connect: 'localhost' port: 8080 login: 'stef'.
(Delay forMilliseconds: 1000) wait.
tcs send: 'hello olivier'.
(Delay forMilliseconds: 2000) wait.
tcs inspect ] fork