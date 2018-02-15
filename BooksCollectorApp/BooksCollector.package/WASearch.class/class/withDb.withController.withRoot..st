instance creation
withDb: aBookDB withController: controller withRoot: aWAHomepage
	| newWASearch |
	newWASearch := self new db: aBookDB; controller: controller; root: aWAHomepage.
	newWASearch updateView.
	^ newWASearch