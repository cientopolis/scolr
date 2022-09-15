scripts
prepareForDeploymentOnPort: port adminEmail: email smtp: smtpServer
	self
		adminEmail: email;
		smtp: smtpServer;
		prepareForDeploymentOnPort: port.
	Transcript
		show:
			'Configuration file '
				,
					ReviewnatorFileBasedConfiguration jsonConfigurationFilename
						asFileReference fullName;
		cr.
	Transcript
		show:
			'Storage folder '
				,
					ReviewnatorFileBasedConfiguration storageFoldername asFileReference
						fullName;
		cr