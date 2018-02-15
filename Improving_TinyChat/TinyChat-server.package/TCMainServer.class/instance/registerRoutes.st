initialization
registerRoutes
	teapotServer
		GET: '/mainserver/count' -> (Send message: #serversCount to: self);
		GET: '/mainserver/subservers' -> (Send message: #serversPrint to: self).