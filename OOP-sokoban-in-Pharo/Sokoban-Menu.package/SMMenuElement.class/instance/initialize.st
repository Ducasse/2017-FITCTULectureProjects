initialization
initialize
super initialize .
self size: self menuXSize  @ self menuYSize .
self background: (BlBackground paint: self backgroundColor ).
self layout: BlBasicLayout new.