initialize-release
article: anObject
	article := anObject.
	opinion := self existingOpinionOrNil.
	opinionToEdit := opinion.
	opinionToEdit
		ifNil: [ opinionToEdit := self newOpinion
				author: currentUser;
				date: Date today;
				article: article ]