display
print: aCollectionOfMessages

	list items: (aCollectionOfMessages collect: [  :m |  m printString ])


