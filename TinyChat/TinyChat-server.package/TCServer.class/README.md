I'm a chat server. I'm listening to HTTPRequests and managing a list of messages. 

My clients often request the messages I hold. Indeed, it may happen that client sends a lot of message and another one should request the difference between the messages it knows and the ones published on the server to be able to refresh correctly. 

I register some routes 
	/messages/ aNumber  get all the messages from aNumber to the end.
	/messages/count to get the current number of messages
	/messages/ add to add a message


TCServer startOn: 8080.

TinyChat connect: 'localhost' port: 8080 login: 'olivier'.
