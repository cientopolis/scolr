private
stringFromTagSet: aTagSet

	^aTagSet inject: ' ' into: [:res :tag | res , ' ' , tag]