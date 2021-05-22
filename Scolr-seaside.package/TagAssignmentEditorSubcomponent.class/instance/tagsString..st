private
tagsString: value
	tags :=  ((((value findTokens: #($, $;)) select: [ :each | each notEmpty ])
		collect: [ :each | each trim ]) select: [ :each | each isEmpty not ]) asSet