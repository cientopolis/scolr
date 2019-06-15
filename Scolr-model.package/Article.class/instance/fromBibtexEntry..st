initialize
fromBibtexEntry: aBibtexEntry
	authors := aBibtexEntry author
		ifNil: [ aBibtexEntry editor ifNil: [ '' ] ].
	year := aBibtexEntry year ifNil: [ '' ].
	title := aBibtexEntry title ifNil: [ '' ].
	abstract := aBibtexEntry abstract ifNil: [ '' ].
	documentType := aBibtexEntry type.
	bibtexEntry := aBibtexEntry