private
loadOrCreateReview
	self storageFileFullName asFileReference exists
		ifTrue: [ FileStream
				oldFileNamed: self storageFileFullName
				do: [ :aStream | coReview := self materializeFromStream: aStream ] ]
		ifFalse: [ coReview := CollaborativeReview new.
			self save ]