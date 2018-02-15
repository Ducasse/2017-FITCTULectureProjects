private
start
	|userNames|
	self getUserNames ifNotNil: 	
	[
	userNames := ((self getUserNames) splitOn: (Character cr asString) )asSet.	
	userNames do: [:u| u = login ifTrue: [ Transcript open; clear; 
			show: 'Error!'; 
			show: (Character cr) asString; 
			show: 'username already taken in the chat room!'. ^''. ] ].
	].

	console := TCConsole attach: self.
	self sendNewMessage: (TCMessage from: login text: 'I joined the chat room').
	self addNewUser: (login).
	lastMessageIndex := self readLastMessageID.
	self refreshMessages.

