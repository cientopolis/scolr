reading
importRow: row
	| article |
	article := Article new.
	row
		with: getters
		do:
			[ :value :getter | article perform: (getter , ':') asSymbol with: (value ifNil: [ '' ]) ].
	self articles add: article