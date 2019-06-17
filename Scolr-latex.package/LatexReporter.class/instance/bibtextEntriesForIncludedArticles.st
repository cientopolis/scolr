accessing
bibtextEntriesForIncludedArticles
	| count entries |
	entries := Dictionary new.
	count := 1.
	count := coReview includedArticles
		do: [ :article | 
			entries
				at: article
				put:
					((article asBibtexEntryWithKey: 'scolr' , count printString)
						removeTag: 'abstract';
						yourself).
			count := count + 1 ].
	^ entries