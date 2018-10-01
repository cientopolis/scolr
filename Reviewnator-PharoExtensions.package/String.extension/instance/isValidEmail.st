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
	validSymbols := #($! $# $$ $% $& $' $* $+ $- $/ $= $? $^ $_ $` ${ $| $} $~ $. $@ $0 $1 $2 $3 $4 $5 $6 $7 $8 $9).
	usedSymbols := self reject: [ :each | each isLetter ].
	^ usedSymbols allSatisfy: [ :each | validSymbols includes: each ]