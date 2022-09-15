| smtp adminEmail |
smtp := OSEnvironment current at: 'SMTP_SERVER' ifAbsent: 'localhost'.
Transcript cr; show: 'SMTP_SERVER: ', smtp printString; cr.
adminEmail := OSEnvironment current at: 'ADMIN_EMAIL' ifAbsent: 'scolr@localhost'.
Transcript cr; show: 'ADMIN_EMAIL: ', adminEmail printString; cr.
ReviewnatorDeployer prepareForDeploymentOnPort: 8080 adminEmail: adminEmail smtp: smtp.
WAAdmin defaultDispatcher defaultName: 'scolr'.
Transcript show: 'Scolr has started'; cr.
Transcript show: 'This line will not show up ... eaten by the container?'; cr.


