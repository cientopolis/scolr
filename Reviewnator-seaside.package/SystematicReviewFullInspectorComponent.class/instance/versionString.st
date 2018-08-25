rendering
versionString
	| thePackage |
	thePackage := MCWorkingCopy allInstances detect: [ :each | each package name == #reviewnator ] ifNone: [ nil ].
	^ thePackage notNil
		ifTrue: [ '[' , thePackage description , ']' ]
		ifFalse: [ '[unknown version]' ]