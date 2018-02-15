blocks
whenAddNewUserBlock
 ^[ :u | 
		self openWindowWithUser: u. 
		user := u ]