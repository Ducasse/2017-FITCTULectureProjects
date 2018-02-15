utility
makeDialog: aString modal: isModal onAction: aBlock
"Utility function for making dialog window"
	| diag diagWindow |
	diag := self instantiate: LabelModel.
	diagWindow := diag openDialogWithSpec
		okAction: aBlock;
		title: aString;
		centeredRelativeTo: self;
		yourself.
	isModal
		ifTrue: [ diagWindow modalRelativeTo: self ]