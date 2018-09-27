rendering
renderLeftColumnOn: html
	html heading: 'Escoller'.
	html paragraph: [ html strong: 'Electronic Support for Collaborative, Open, Lightweight Literature Reviews.' ].
	html
		paragraph:
			'Escoller offers collaboration support to create open, literature reviews, with minimal effort (thus lightweight). An access code gives you write-access to a specific review.'.
	html paragraph: 'If you already have a code, you can use it to access your review.'.
	"html image url: ReviewnatorFileLibrary / #reviewnatorPng."
	^ self renderInputRequestOn: html