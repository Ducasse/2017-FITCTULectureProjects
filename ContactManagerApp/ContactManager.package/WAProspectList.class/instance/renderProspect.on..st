rendering
renderProspect: aProspect on: html
	html
		tableRow: [ html
				tableData: aProspect pname;
				tableData: aProspect mandays;
				tableData: (self prospectStateService getProspectStateById: aProspect state);
				tableData: aProspect probability;
				tableData: aProspect revenue;
				tableData: [ html
						tbsButtonGroup: [ self
								renderEditButtonFor: aProspect on: html with: [ WAProspect editProspect: aProspect ];
								renderRemoveButtonFor: aProspect on: html with: [ self removeProspect: aProspect ] ] ] ]