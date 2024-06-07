accessing
apiKey

	^ OSEnvironment current at: 'MAILERSEND_APIKEY' ifAbsent: [ 
		  self class apikeyFilename asFileReference exists ifTrue: [ 
			  ^ self class apikeyFilename asFileReference contents trimBoth ] ]