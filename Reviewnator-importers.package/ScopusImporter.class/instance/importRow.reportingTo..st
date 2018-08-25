reading
importRow: row reportingTo: anImportReport
	| article selector |
	article := Article new.
	row
		with: columnLabels
		do: [ :value :label | 
			selector := self columnToSelectorMap at: label ifAbsent: nil.
			selector
				ifNotNil: [ article perform: (selector , ':') asSymbol with: (value ifNil: [ '' ]) ] ].
	self articles add: article