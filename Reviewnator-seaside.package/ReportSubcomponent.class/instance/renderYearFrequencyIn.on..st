rendering
renderYearFrequencyIn: bagOfyears on: html
	| bagOfyearsAsNumbers report |
	bagOfyears ifEmpty: [ ^ self ].
	bagOfyearsAsNumbers := bagOfyears
		collect: [ :each | 
			[ each asNumber ]
				on: Error
				do: [ 1800 ] ].
	report := (bagOfyearsAsNumbers asSet asSortedCollection
		collect: [ :year | year printString , ' (' , (bagOfyearsAsNumbers occurrencesOf: year) printString , ')' ])
		fold: [ :a :b | a , ', ' , b ].
	html text: report