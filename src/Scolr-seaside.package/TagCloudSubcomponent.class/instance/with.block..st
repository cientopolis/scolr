initialization
with: objects block: aBlock
	tags := Bag new.
	block := aBlock.
	objects
		do:
			[ :each | tags addAll: ((aBlock value: each) ifEmpty: [ Set with: '' ]) ]