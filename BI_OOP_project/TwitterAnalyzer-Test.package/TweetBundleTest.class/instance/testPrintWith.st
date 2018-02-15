tests
testPrintWith
	|tb list|
	tb := Timeline new.
	list := LinkedList new.
	list add: (Tweet new status: 'ahoj'; userScreenName: 'troll').
	list add: (Tweet new status: 'cus'; userScreenName: 'smolicek').
	list add: (Tweet new status: 'zdar'; userScreenName: 'pacholicek').
	tb fromList: list.
	
	self assert: (tb printWith: VisitorPrinter new) equals: 
'@troll:', String crlf,
String tab, 'ahoj', String crlf, '----------------------------------------------------------------------', String crlf,
'@smolicek:', String crlf,
String tab, 'cus', String crlf,
'----------------------------------------------------------------------', String crlf,
'@pacholicek:', String crlf,
String tab, 'zdar', String crlf,
'----------------------------------------------------------------------', String crlf.