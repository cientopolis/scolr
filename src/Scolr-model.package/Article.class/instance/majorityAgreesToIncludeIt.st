opinions-classifications
majorityAgreesToIncludeIt

	^ classifications notEmpty and: [ 
		  (classifications select: [ :each | each toInclude ]) size
		  > (classifications reject: [ :each | each toInclude ]) size]