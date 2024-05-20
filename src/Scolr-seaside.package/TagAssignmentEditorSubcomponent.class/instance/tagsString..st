private
tagsString: value
   | cleanedValue |
   cleanedValue := value copyWithout: $#.
	tags :=  ((((cleanedValue findTokens: #($, $;)) select: [ :each | each notEmpty ])
		collect: [ :each | each trim ]) select: [ :each | each isEmpty not ]) asSet