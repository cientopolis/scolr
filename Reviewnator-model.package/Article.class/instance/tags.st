accessing
tags
	| tags |
	tags := Set new.
	self collectTagsIn: tags.
	^ tags