summaries
summaryFor: aUser
	| in out his  sum coms tags undecided |
	sum := ClassificationSummary for: aUser about: self.
	in := 0.
	out := 0.
	undecided := 0.
	his := 0.
	coms := Set new.
	tags := Set new.

	classifications 
		do: [ :each | 
			each toExclude
				ifTrue: [ out := out + 1 ].
			each toInclude
				ifTrue: [ in := in + 1 ].
			each undecided
				ifTrue: [ undecided := undecided + 1 ].
			each author == aUser
				ifTrue: [ his := his + 1 ].
			coms add: each comments.
			tags addAll: each tags ].
	sum
		included: in;
		excluded: out;
		undecided: undecided;
		addClassificationComments: coms;
		addClassificationTags: tags.
	his == 0
		ifTrue: [ sum waiting: 1 ].
	classifications size ~= in & (classifications size ~= out)
		ifTrue: [ sum disagreement: 1 ].
	^ sum