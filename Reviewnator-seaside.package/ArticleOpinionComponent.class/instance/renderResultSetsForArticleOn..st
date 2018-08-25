rendering
renderResultSetsForArticleOn: html
	| sets |
	sets := self coReview resultSetsContaining: article.
	html unorderedList
		with: [ 
			sets
				do: [ :set | 
					html listItem
						with: [ 
							(set articles includes: article)
								ifTrue: [ html strong: set printString ]
								ifFalse: [ html text: set printString ] ] ] ]