callbacks
import
	importer
		readFrom: uploadedFile
		ignoringDuplicatesIn:
			(ignorePotentialDuplicates
				ifTrue: [ self coReview allArticles ]
				ifFalse: [ Set new ]).
	self deleteTempFileIfExists