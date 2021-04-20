scripts
prepareForDeploymentOnPort: port adminEmail: email smtp: smtpServer
	| configurationFile storageFolder |
	configurationFile := ReviewnatorFileBasedConfiguration
		configurationFilename asFileReference.
		storageFolder := ReviewnatorFileBasedConfiguration singleton storageFolder asFileReference.
	self
		adminEmail: email;
		smtp: smtpServer;
		prepareForDeploymentOnPort: port.
	Transcript
		show: 'Configuration file ' , configurationFile fullName;
		cr.
		Transcript show: 'Storage folder ', storageFolder fullName. 