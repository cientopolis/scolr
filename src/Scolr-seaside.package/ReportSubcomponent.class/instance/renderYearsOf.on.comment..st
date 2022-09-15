rendering
renderYearsOf: articles on: html comment: text
	| bagOfyears bagOfyearsAsNumbers report |
	bagOfyears := articles collect: [ :each | each year ] as: Bag.
	bagOfyears notEmpty
		ifTrue: [ bagOfyearsAsNumbers := bagOfyears
				collect: [ :each | 
					[ each asNumber ]
						on: Error
						do: [ 1800 ] ].
			report := (bagOfyearsAsNumbers asSet asSortedCollection
				collect: [ :year | year printString , ' (' , (bagOfyearsAsNumbers occurrencesOf: year) printString , ')' ])
				fold: [ :a :b | a , ', ' , b ].
			html paragraph: [ html text: text , report ] ]