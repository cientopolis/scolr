opinions-classifications
addClassification: aClassification
	classifications := classifications reject: [ :each | each author = aClassification author ].
	classifications add: aClassification.
