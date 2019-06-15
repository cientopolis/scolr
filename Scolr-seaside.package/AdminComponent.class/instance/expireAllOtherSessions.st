callbacks
expireAllOtherSessions
	(self session application sessions copyWithout: self session)
		do: [ :each | each unregister ]