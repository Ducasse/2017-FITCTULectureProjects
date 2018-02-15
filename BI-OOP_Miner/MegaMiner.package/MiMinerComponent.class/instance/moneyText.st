accessing
moneyText
	| price |
	price := self nextUpgrade price.
	price isInfinite ifTrue: [ ^ 'MAX' ] ifFalse: [ ^ price asString , ' $']