rendering
renderOpinion: aReview on: html
	html
		strong: 'Tags:  ';
		text: (self stringFromTagSet: (aReview tags ifNil: [ Set new ]));
		break.
	aReview dimensions
		do: [ :dim | 
			html
				strong: dim, ': ';
				text: (aReview commentInDimension: dim);
				break ]