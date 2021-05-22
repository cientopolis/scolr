rendering
renderOpinion: aReview on: html
	aReview dimensions
		do: [ :dim | 
			html
				strong: dim, ': ';
				text: (aReview commentInDimension: dim);
				break ]