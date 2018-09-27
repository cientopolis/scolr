private
userNamed: aName
	^ users detect: [ :each | each username = aName ]