api
asCsvOn: aFilename
	| writer |
	writer := NeoCSVWriter on: aFilename asFileReference writeStream.
	writer
		writeHeader:
			#('Owner' 'Created' 'Code' 'Sets' 'Articles' 'Included' 'Contributors' 'Tags' 'Reviews').
	stats
		do: [ :each | 
			writer
				nextPut:
					{each owner.
					each creationDate ddmmyyyy.
					each accessCode.
					each resultSetsCount.
					each totalArticleCount.
					each includedArticleCount.
					each contributors size.
					each tagCloud size.
					each reviewsCount} ].
	writer close