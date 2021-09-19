private
activeAccessCredentials
	^ ReviewnatorFileBasedConfiguration singleton accessCredentials
		reject: [ :each | each isAdmin | each isActive not ]