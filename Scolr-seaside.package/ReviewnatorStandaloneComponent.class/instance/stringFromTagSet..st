private
stringFromTagSet: aCollectionOfTags
	^ aCollectionOfTags
		ifNotEmpty: [ aCollectionOfTags
				fold: [ :sub :tag | 
					sub , ', ' , tag ] ]
		ifEmpty: [ '' ]