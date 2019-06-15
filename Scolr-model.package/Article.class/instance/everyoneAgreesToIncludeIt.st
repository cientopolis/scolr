opinions-classifications
everyoneAgreesToIncludeIt
	^ classifications notEmpty and: [ classifications allSatisfy: [ :each | each toInclude ] ]