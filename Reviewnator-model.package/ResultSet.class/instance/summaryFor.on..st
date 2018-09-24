statistics
summaryFor: aUser on: aCoReview
	| summary itsSum |
	summary := ClassificationSummary for: aUser about: self.
	articles
		do: [ :each | 
			itsSum := each summaryFor: aUser.
			itsSum isDisagreement
				ifTrue: [ summary disagreement: summary disagreement + 1 ].
			itsSum isExclusion
				ifTrue: [ summary excluded: summary excluded + 1 ].
			itsSum isInclusion
				ifTrue: [ summary included: summary included + 1 ].
			itsSum isWaiting
				ifTrue: [ summary waiting: summary waiting + 1 ].
			itsSum isUndecided
				ifTrue: [ summary undecided: summary undecided + 1 ] ].
	^ summary