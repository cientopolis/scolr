testing
testAddClassification
	| aClassificationByA anotherClassificationByA aClassificationByB |

	aClassificationByA := Classification new.
	aClassificationByA author: userA.
	articleOne addClassification: aClassificationByA.
	self assert: articleOne classifications equals: (OrderedCollection with: aClassificationByA).

	anotherClassificationByA := Classification new.
	anotherClassificationByA author: userA.
	articleOne addClassification: anotherClassificationByA.
	self assert: articleOne classifications equals: (OrderedCollection with: anotherClassificationByA).

	aClassificationByB := Classification new.
	aClassificationByB author: userB.
	articleOne addClassification: aClassificationByB.
	self assert: articleOne classifications equals: (OrderedCollection with: anotherClassificationByA with: aClassificationByB ).
