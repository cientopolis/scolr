accessing
tags
	^ (tags ifNil: [ Set new ]) asSortedCollection