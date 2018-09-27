rendering
renderLeftColumnOn: html
	html heading: 'Copliter'.
	html paragraph: [ html strong: 'Collaborative OPen LITerature Reviews.' ].
	html
		paragraph:
			'Copliter offers collaboration support to create open, literature reviews. An access code gives you write-access to a specific review.'.
	html paragraph: 'If you already have a code, you can use it to access your review.'.
	"html image url: ReviewnatorFileLibrary / #reviewnatorPng."
	^ self renderInputRequestOn: html