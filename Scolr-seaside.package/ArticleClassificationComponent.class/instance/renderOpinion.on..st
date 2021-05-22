rendering
renderOpinion: aClassification on: html
	html
		strong: 'Recommendation: ';
		text: aClassification decision , ' (' , aClassification date printString , ').';
		break.
	html
		strong: 'Comments: ';
		text: aClassification comments