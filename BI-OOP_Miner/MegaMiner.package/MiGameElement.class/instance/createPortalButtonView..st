initialization
createPortalButtonView: aGame
	portalButtonView := MiPortalButtonElement new.
	"aGame is responsible for teleporting"
	portalButtonView model: aGame.
	self addChild: portalButtonView