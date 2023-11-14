opinions-classifications
majorityAgreesToExcludeIt

	^ classifications notEmpty and: [ 
		  (classifications select: [ :each | each toExclude ]) size
		  > (classifications reject: [ :each | each toExclude ]) size]