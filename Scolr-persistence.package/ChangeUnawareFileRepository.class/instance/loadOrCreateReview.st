private
loadOrCreateReview
	| review |
	review := CollaborativeReview new.
	self storageFileFullName asFileReference exists
		ifTrue: [ FileStream
				oldFileNamed: self storageFileFullName
				do:
					[ :aStream | review := self materializeFromStream: aStream ] ].
	coReview := review