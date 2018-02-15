private
textElement
^ BlTextElement new
		wantsMouse: false;
		padding: (BlInsets top: 8 right: 16 bottom: 8 left: 16);
		constraintsDo: [ :c | c frame horizontal alignCenter. c frame vertical alignCenter ]