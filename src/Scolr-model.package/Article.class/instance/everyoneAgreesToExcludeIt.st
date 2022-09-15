opinions-classifications
everyoneAgreesToExcludeIt
	^ classifications notEmpty and: [ classifications allSatisfy: [ :each | each toExclude ] ]