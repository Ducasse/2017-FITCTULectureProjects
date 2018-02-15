accessing
default
	^ self basicNew 
		host: #[0 0 0 0];
		port: 3000;
		yourself