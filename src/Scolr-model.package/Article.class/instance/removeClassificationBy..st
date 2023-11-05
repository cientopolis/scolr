opinions-classifications
removeClassificationBy: aUser

	classifications := classifications reject: [ :each | 
		                   each author = aUser ]