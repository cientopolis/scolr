*Reviewnator-PharoExtensions
isValidEmail
	| validSymbols usedSymbols parts |
	(self includes: $@)
		ifFalse: [ ^ false ].
	parts := self findTokens: $@.
	parts size = 2
		ifFalse: [ ^ false ].
	parts first isEmpty | parts second isEmpty
		ifTrue: [ ^ false ].
	(parts second findTokens: $.) size >= 2
		ifFalse: [ ^ false ].
	validSymbols := #($! $# $$ $% $& $' $* $+ $- $/ $= $? $^ $_ $` ${ $| $} $~ $. $@).
	usedSymbols := self reject: [ :each | each isLetter ].
	^ usedSymbols allSatisfy: [ :each | validSymbols includes: each ]