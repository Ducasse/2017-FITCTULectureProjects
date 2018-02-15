instance creation
new
	self error: (self class asString), ' is a singleton. You can get the instance by sending a message get to the class.'