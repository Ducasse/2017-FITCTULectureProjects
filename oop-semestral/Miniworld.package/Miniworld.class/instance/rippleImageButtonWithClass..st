initialization
rippleImageButtonWithClass: aClass
	^ (BlButtonFactory selectableRippleWithImage: (aClass new buildImageMagnifyBy: 2.5)) addOnClick: [ :e | self onStateHolderChangeClick: e ifSelectedAssign: [ TileHolder new: aClass ] ]