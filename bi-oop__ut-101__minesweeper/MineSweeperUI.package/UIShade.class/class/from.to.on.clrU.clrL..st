instance creation
from: ptA to: ptB on: aCanvas clrU: clrUpper clrL: clrLower
	| ul ur ll lr |
	ul := ptA. "upper left"
	ur := (ptB x)@(ptA y). "upper right"
	ll := (ptA x)@(ptB y). "lower left"
	lr := ptB.	"lower right"
	
	0 to: 2 do: [ :i |
			aCanvas stroke
			paint: clrUpper ;
			path: (aCanvas shape 
				line: (ul x+i)@(ul y+i) 
				to: (ll x+i)@(ll y-i) );
			width: 1;
			draw.
			
			aCanvas stroke
			paint: clrLower;
			path: (aCanvas shape 
				line: (ll x+i)@(ll y-i) 
				to: (lr x-i)@(lr y-i) );
			width: 1;
			draw.
			
			aCanvas stroke
			paint: clrLower;
			path: (aCanvas shape 
				line: (lr x-i)@(lr y-i) 
				to: (ur x-i)@(ur y+i) );
			width: 1;
			draw.
			
			aCanvas stroke
			paint: clrUpper;
			path: (aCanvas shape 
				line: (ur x-i)@(ur y+i)  
				to: (ul x+i)@(ul y+i) );
			width: 1;
			draw.
		].
	
	"aCanvas stroke
			paint: clrUpper;
			path: (aCanvas shape 
				polygon: {ul. ll. (ll x+2)@(ll y-2). (ul x+2)@(ul y+2). (ur x-2)@(ur y+2). ur } );
			width: 1; 
			draw.
	
	aCanvas stroke
			paint: clrLower;
			path: (aCanvas shape 
				polygon: {ll. (ll x+2)@(ll y-2). (lr x-2)@(lr y-2). (ur x-2)@(ur y+2). ur. lr } );
			width: 1; 
			draw.
	"