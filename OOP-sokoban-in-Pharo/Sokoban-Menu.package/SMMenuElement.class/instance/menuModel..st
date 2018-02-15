accessing
menuModel: aMenuModel
| aButtonEventListener |

menuModel  := aMenuModel .
aButtonEventListener := self newButtonEventListener buttons: aMenuModel .

aMenuModel buttons 
	do: [ :aButton | 
		| buttonElement |
		buttonElement := self newButtonElement button: aButton.
		buttonElement addEventHandler: aButtonEventListener.
		buttonElement setSizeLocation .
		self addChild: buttonElement  
		]