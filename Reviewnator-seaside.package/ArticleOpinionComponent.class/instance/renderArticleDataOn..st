rendering
renderArticleDataOn: html
	html heading
		level: 2;
		with: [ html text: article title ].
	html
		strong: 'Year: ';
		text: article year , ' - Type: ' , article documentType.
	html break.
	html
		strong: 'Authors: ';
		text: article authors;
		break.
	html strong: 'In result sets: '.
	self renderResultSetsForArticleOn: html.
	html strong: 'Abstract. '.
	html span
		class: 'abstract';
		with: [ html text: article abstract ]