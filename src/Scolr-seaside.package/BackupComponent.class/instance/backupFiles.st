rendering hooks
backupFiles

	^ ('.' asFileReference entries collect: #asFileReference) select: [ 
		  :each | each isFile & (each extension = 'tar') ]