initialize-release
article: anObject
	article := anObject.
	self opinionToEdit: self existingOpinionOrNil.
	opinionToEdit
		ifNil: [ self
				opinionToEdit:
					(self newOpinion
						author: currentUser;
						date: Date today;
						article: article;
						yourself) ]