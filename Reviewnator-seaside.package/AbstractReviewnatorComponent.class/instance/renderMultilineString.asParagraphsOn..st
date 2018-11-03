rendering
renderMultilineString: aString asParagraphsOn: html
	aString linesDo: [ :line | html paragraph: line ]