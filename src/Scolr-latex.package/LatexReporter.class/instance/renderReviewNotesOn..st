redering
renderReviewNotesOn: stream
	| reviews |
	stream
		nextPutAll:
			'\section{Review notes}

These are the individual notes for each review dimention, and rach article. You can remove this section after you have finished the report. They are organized by dimension, then by article. 
'.
	coReview reviewDimensions asSortedCollection
		do: [ :dimension | 
			stream
				nextPutAll: '\subsection{' , dimension , '}';
				cr.
			(coReview includedArticles asSortedCollection: [ :a :b | a title < b title ])
				do: [ :article | 
					reviews := article reviews select: [ :each | (each commentInDimension: dimension) notEmpty ].
					reviews
						do: [ :review | 
							stream
								nextPutAll: '\subsubsection*{' , article title , '}';
								cr.
							stream
								cr;
								nextPutAll: 'These all notes available for \cite{' , (bibtexEntries at: article) citationKey , '}\\';
								cr.
							stream
								nextPutAll: '(' , review author shortenedUsername , ') ';
								nextPutAll: (review commentInDimension: dimension);
								cr ] ] ]