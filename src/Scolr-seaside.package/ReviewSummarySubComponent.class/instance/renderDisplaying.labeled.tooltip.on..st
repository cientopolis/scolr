rendering
renderDisplaying: aString labeled: aLabel tooltip: aTooltip on: html

	html paragraph: [ 
		html strong: [ html text: aLabel ].
		html tbsGlyphIcon iconQuestionSign tbsTooltip: aTooltip.
		aString isEmptyOrNil
			ifTrue: [ html tbsAlert beWarning with: [ html preformatted: aTooltip ] ]
			ifFalse: [ html preformatted: aString ] ]