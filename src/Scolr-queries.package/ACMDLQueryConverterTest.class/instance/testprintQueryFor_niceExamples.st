testing
testprintQueryFor_niceExamples

	| query |
	query := QueryParser new parse: '(! Smalltalk & Java) | Javascript'.
	self
		assert: (converter printQueryFor: query)
		equals:
		'Title: ((NOT Smalltalk AND Java) OR Javascript) OR Abstract: ((NOT Smalltalk AND Java) OR Javascript)'.

	query := QueryParser new parse: '(Adaptation | Adaptive | Adaptivity | Adaptability) & (Gamification | Gamifying | gamify | "gameful design" ) & (! Customization)'.
	self
		assert: (converter printQueryFor: query)
		equals:
		'Title: ((Adaptation OR Adaptive OR Adaptivity OR Adaptability) AND (Gamification OR Gamifying OR gamify OR "gameful design") AND NOT Customization) OR Abstract: ((Adaptation OR Adaptive OR Adaptivity OR Adaptability) AND (Gamification OR Gamifying OR gamify OR "gameful design") AND NOT Customization)'