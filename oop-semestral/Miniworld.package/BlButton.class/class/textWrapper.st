private
textWrapper
^ BlElement new 
constraintsDo: [ :c | c vertical matchParent . c horizontal matchParent  ];
					layout: BlFrameLayout new.