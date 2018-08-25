rendering
renderOpinion: aClassification on: html
	html
		strong: 'Tags:  ';
		text: (self stringFromTagSet: (aClassification tags ifNil: [ Set new ]));
		break.
	html
		strong: 'Recommendation: ';
		text: aClassification decision , ' (' , aClassification date printString , ').';
		break.
	html
		strong: 'Comments: ';
		text: aClassification comments