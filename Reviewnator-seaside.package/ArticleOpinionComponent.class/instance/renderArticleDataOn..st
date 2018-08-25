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
		strong: 'Source: ';
		text: article sourceTitle , ' - Volume: ' , article volume , ' - Issue: ' , article issue;
		break.
	html
		strong: 'Authors: ';
		text: article authors;
		break.
	html
		strong: 'Keywords: ';
		text: article authorKeywords;
		break;
		break.
	html strong: 'In result sets: '.
	self renderResultSetsForArticleOn: html.
	html strong: 'Abstract. '.
	html span
		class: 'abstract';
		with: [ html text: article abstract ]