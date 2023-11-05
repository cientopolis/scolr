testing
testRemoveClassificationBy
	| aClassificationByA  aClassificationByB |

	articleOne removeClassificationBy: userA.
	self assert: articleOne classifications equals: (OrderedCollection new).

	aClassificationByA := Classification new.
	aClassificationByA author: userA.
	articleOne addClassification: aClassificationByA.

	aClassificationByB := Classification new.
	aClassificationByB author: userB.
	articleOne addClassification: aClassificationByB.

	articleOne removeClassificationBy: userA.
	self assert: articleOne classifications equals: (OrderedCollection with: aClassificationByB).
