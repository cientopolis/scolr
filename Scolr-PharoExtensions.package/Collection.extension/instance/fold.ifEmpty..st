*Scolr-PharoExtensions
fold: binaryBlock ifEmpty: ifEmptyBlock
	"Evaluate the block with the first two elements of the receiver,
	then with the result of the first evaluation and the next element,
	and so on.  Answer the result of the final evaluation. If the receiver
	is empty, evaluate ifEmptyBlock. If the receiver has a single element, answer
	that element."

	"#('if' 'it' 'is' 'to' 'be' 'it' 'is' 'up' 'to' 'me') fold: [:a :b | a, ' ', b]"

	^ self isEmpty
		ifTrue: [ ifEmptyBlock value ]
		ifFalse: [ self fold: binaryBlock ]