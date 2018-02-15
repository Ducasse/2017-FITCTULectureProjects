rendering
renderProspectsOn: html
	html
		tbsTable: [ html
				tableHead: [ html
						tableHeading: 'Name';
						tableHeading: 'Mandays';
						tableHeading: 'State';
						tableHeading: 'Probability, %';
						tableHeading: 'Revenue' ].
			self prospectsDo: [ :prospect | self renderProspect: prospect on: html ] ]