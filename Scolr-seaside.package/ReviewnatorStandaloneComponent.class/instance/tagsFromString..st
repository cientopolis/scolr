private
tagsFromString: value
	^ (((value findTokens: #($, $;)) select: [ :each | each notEmpty ]) collect: [ :each | each trim ])
		select: [ :each | each isEmpty not ]