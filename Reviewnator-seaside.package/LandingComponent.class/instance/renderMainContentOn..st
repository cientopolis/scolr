rendering
renderMainContentOn: html
	html
		tbsJumbotron: [ html heading: 'Reviewnator'.
			html
				paragraph: 'Collaborative systematic literature reviews.'.
			html image url: ReviewnatorFileLibrary / #reviewnatorPng.
			self renderInputRequestOn: html ]