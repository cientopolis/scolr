rendering
renderLeftColumnOn: html
	html heading: 'Scolr'.
	html paragraph: [ html strong: 'Support for Collaborative, Open, Literature Reviews.' ].
	html paragraph: 'Scolr offers collaboration support to create open, literature reviews. '.
	html paragraph
		with: [ html text: 'To learn more about Scolr, visit '.
			html anchor
				url: 'http://wiki.cientopolis.org/index.php/Scolr ';
				target: ':new';
				with: 'its pages in the cientopolis.org wiki' ].
	html
		paragraph:
			'An access code gives you write-access to a specific review. If you already have a code, you can use it to access your review.'.
	"html image url: ReviewnatorFileLibrary / #reviewnatorPng."
	^ self renderInputRequestOn: html