testing
testAConstructor
	| config |
	config := ReviewnatorFileBasedConfiguration new.
	self assert: config accessCredentials size equals: 1.
	self assert: config accessCredentials first accessCode equals: 'admin'