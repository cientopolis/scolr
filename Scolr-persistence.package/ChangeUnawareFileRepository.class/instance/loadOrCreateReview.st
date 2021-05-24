private
loadOrCreateReview
	self storageFileFullName asFileReference exists
		ifTrue: [ Transcript
				show: 'Loading from ' , self storageFileFullName;
				cr.
			self storageFileFullName asFileReference
				readStreamDo: [ :aStream | coReview := self materializeFromStream: aStream ] ]
		ifFalse: [ coReview := CollaborativeReview new.
			self save ]