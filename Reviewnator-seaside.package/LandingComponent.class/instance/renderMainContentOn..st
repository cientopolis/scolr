rendering
renderMainContentOn: html
	html
		tbsJumbotron: [ html heading: 'Copliter'.
			html
				paragraph: 'Collaborative OPen LITerature Reviews.'.
			html image url: ReviewnatorFileLibrary / #reviewnatorPng.
			self renderInputRequestOn: html ]