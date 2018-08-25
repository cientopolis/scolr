rendering
tagsFromString: value
	| tags |
	tags := value findTokens: Character space escapedBy: nil.
	^(tags select: [ :each | each size > 1 ]) asSet