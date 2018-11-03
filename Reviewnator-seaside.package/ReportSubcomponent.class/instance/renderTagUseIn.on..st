rendering
renderTagUseIn: aBagOfTags on: html
	aBagOfTags asSet asOrderedCollection
		do: [ :tag | html text: tag , ' (' , (aBagOfTags occurrencesOf: tag) printString , ') ' ]