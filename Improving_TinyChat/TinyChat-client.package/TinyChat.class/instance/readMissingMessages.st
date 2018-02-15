private
readMissingMessages
	"Gets the new messages that have been posted since the last request."
	| response receivedMessages |
	accesWebPath := webPath cmdMessagesFromLastIndexToEnd: self lastMessageIndex.
	response := (ZnClient new url: self accesWebPath ; get).
	^ response 
		ifNil: [ 0 ]
		ifNotNil: [  
			receivedMessages := response substrings: (String crlf).
			receivedMessages do: [ :msg | messages add: (TCMessage fromString: msg) ].
			receivedMessages size.
		].