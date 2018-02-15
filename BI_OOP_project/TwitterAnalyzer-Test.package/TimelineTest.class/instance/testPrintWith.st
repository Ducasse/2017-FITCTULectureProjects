tests
testPrintWith
	|ti list|
	ti := Timeline new.
	list := LinkedList new.
	list add: (Status new status: 'ahoj').
	list add: (Status new status: 'cus').
	list add: (Status new status: 'zdar').
	ti fromList: list.
	
	self assert: (ti printWith: VisitorPrinter new) equals: 'ahoj', String crlf, '----------------------------------------------------------------------', String crlf,
'cus', String crlf,
'----------------------------------------------------------------------', String crlf,
'zdar', String crlf,
'----------------------------------------------------------------------', String crlf.