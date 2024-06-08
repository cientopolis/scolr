loading
loadOrCreate
	| conf |
	conf := self obtainFromJson.
	conf ifNotNil: [ ^ conf ].
	^ self new
		save;
		yourself