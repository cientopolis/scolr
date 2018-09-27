rendering
renderLeftColumnOn: html
	html heading: 'Copliter'.
	html
		paragraph: [ html strong: 'Collaborative OPen LITerature Reviews.' ].
	html image url: ReviewnatorFileLibrary / #reviewnatorPng.
	^ self renderInputRequestOn: html