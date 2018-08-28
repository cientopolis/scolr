private
reportWarningsAndErrorsFromImportReport
	| writeStream |
	importer importReport importWarnings notEmpty
		ifTrue: [ writeStream := String new writeStream.
			importer importReport importWarnings do: [ :msg | writeStream nextPutAll: msg ] separatedBy: [ writeStream cr ].
			warningMessage := writeStream contents ].
	importer importReport importErrors notEmpty
		ifTrue: [ writeStream := String new writeStream.
			importer importReport importErrors do: [ :msg | writeStream nextPutAll: msg ] separatedBy: [ writeStream cr ].
			errorMessage := writeStream contents ]