accessing
bibtextEntriesForIncludedArticles

	| entries |
	entries := Dictionary new.
	coReview includedArticles do: [ :article | 
		entries at: article put: article asBibtexEntry ].
	^ entries