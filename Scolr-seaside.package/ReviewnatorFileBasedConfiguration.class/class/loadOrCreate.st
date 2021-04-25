loading
loadOrCreate
	| conf |
	conf := self obtainFromJson.
	conf ifNotNil: [ ^ conf ].
	conf := self obtainFromFuel.
	conf
		ifNotNil: [ conf save.
			^ conf ].
	^ self new
		save;
		yourself