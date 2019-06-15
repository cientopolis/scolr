rendering
renderTagUseIn: aBagOfTags on: html
	| report |
	report := (aBagOfTags asSet asSortedCollection
		collect: [ :tag | tag , ' (' , (aBagOfTags occurrencesOf: tag) printString , ')' ]) fold: [ :a :b | a , ', ' , b ].
	html text: report