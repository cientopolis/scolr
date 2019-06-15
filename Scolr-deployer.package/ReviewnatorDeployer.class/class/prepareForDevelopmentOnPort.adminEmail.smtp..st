scripts
prepareForDevelopmentOnPort: port adminEmail: email smtp: smtpServer
	self
		adminEmail: email;
		smtp: smtpServer;
		prepareForDevelopmentOnPort: port