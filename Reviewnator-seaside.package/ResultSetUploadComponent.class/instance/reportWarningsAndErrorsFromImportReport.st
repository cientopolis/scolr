private
reportWarningsAndErrorsFromImportReport
	| writeStream |
	importReport importWarnings notEmpty
		ifTrue: [ writeStream := String new writeStream.
			importReport importWarnings do: [ :msg | writeStream nextPutAll: msg ] separatedBy: [ writeStream cr ].
			warningMessage := writeStream contents ].
	importReport importErrors notEmpty
		ifTrue: [ writeStream := String new writeStream.
			importReport importErrors do: [ :msg | writeStream nextPutAll: msg ] separatedBy: [ writeStream cr ].
			errorMessage := writeStream contents ]