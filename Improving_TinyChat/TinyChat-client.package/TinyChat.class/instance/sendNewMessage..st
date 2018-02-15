private
sendNewMessage: aMessage
accesWebPath := webPath cmdNewMessage.
	^ ZnClient new
		url: self accesWebPath;
		formAt: 'sender' put:  (aMessage sender);
		formAt: 'text' put: (aMessage text);
		post