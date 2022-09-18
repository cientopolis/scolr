scripts
prepareForDeploymentOnPort: port

	super prepareForDeploymentOnPort: port.
	Transcript
		show: 'Configuration file '
			, ReviewnatorFileBasedConfiguration jsonConfigurationFilename
					asFileReference fullName;
		cr.
	Transcript
		show: 'Storage folder '
			,
				ReviewnatorFileBasedConfiguration storageFoldername
					asFileReference fullName;
		cr