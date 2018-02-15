initialize-release
registerRoutes
	teapotServer
		GET: '/messages/count' -> (Send message: #messageCount to: self);
		GET: '/messages/<id:IsInteger>' -> (Send message: #messagesFrom: to: self);
		GET: '/users' -> (Send message: #usersGet to: self);
		GET: '/users/names' -> (Send message: #usersGetOnlyNames to: self);
		GET: '/users/count' -> (Send message: #usersGetCount to: self);	
		POST: '/users/add/casual' -> (Send message: #addCasualUser: to: self);
		POST: '/users/add/admin' -> (Send message: #addAdmin: to: self);
		POST: '/users/remove' -> (Send message: #removeUser: to: self);
		POST: '/messages/add' -> (Send message: #addMessage: to: self)