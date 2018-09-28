scripts
prepareForDeploymentOnPort: port adminEmail: email smtp: smtpServer
	self
		adminEmail: email;
		smtp: smtpServer;
		prepareForDeploymentOnPort: port