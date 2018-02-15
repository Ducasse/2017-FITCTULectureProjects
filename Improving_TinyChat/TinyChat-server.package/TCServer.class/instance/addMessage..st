action
addMessage: aRequest
	|tmp|
	messagesQueue add: (TCMessage from: (aRequest at: #sender) text: (aRequest at: #text)).
	
	((aRequest at: #text) at: 1 ) asString = '\' ifTrue: [
			(aRequest at: #text) = '\printAllUsers' ifTrue:[
				tmp := TCPrintAllUsers new.
				tmp aServer: self.
				messagesQueue add: (TCMessage from: 'System' text: (tmp acceptWith: (self getUserByName: (aRequest at: #sender) ))).^''].
			
			(aRequest at: #text) = '\status' ifTrue:[
				messagesQueue add: (TCMessage from: 'System' text: ((self getUserByName: (aRequest at: #sender) ) status) ).^''].
			
			(aRequest at: #text) = '\printUsersCount' ifTrue:[
				messagesQueue add: (TCMessage from: 'System' text: ((self getUserByName: (aRequest at: #sender) ) printUsersCount: 				self) ).^''].
							
			(aRequest at: #text) = '\help' ifTrue:[
				messagesQueue add: (TCMessage from: 'System' text: ((self getUserByName: (aRequest at: #sender) ) help) ).^''].
			
	messagesQueue add: (TCMessage from: 'System' text: 'Neznamy prikaz').
	].  
	