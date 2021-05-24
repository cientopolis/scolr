private
loadOrCreateReview
	self storageFileFullName asFileReference exists
		ifTrue: [ Transcript show: 'Loading from ', self storageFileFullName.
			(File named: self storageFileFullName)
				readStreamDo: [ :aStream | coReview := self materializeFromStream: aStream ] ]
		ifFalse: [ coReview := CollaborativeReview new.
			self save ]