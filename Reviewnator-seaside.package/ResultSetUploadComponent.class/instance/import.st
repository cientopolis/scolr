callbacks
import
	importer := CSVImporter new.
	importer
		readFrom: uploadedFile 
		ignoringDuplicatesIn:
			(ignorePotentialDuplicates
				ifTrue: [ self coReview allArticles ]
				ifFalse: [ Set new ])