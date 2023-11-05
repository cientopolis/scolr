callback
forgetClassificationFor: article

	article removeClassificationBy: self currentUser. 
	self save. 