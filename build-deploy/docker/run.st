|  adminEmail smtpServer smtpPort smtpUsername smtpPassword |

adminEmail := (OSEnvironment current at: 'ADMIN_EMAIL').
smtpUsername := (OSEnvironment current at: 'SMTP_USERNAME' ifAbsent: nil).
smtpPassword := (OSEnvironment current at: 'SMTP_PASSWORD' ifAbsent: nil).
smtpServer := (OSEnvironment current at: 'SMTP_SERVER' ifAbsent: nil).
smtpPort := (OSEnvironment current at: 'SMTP_PORT' ifAbsent: '587') printString.

ReviewnatorDeployer
  adminEmail: adminEmail;
  smtpServer: smtpServer;
  smtpPort: smtpPort;
  smtpUsername: smtpUsername;
  smtpPassword: smtpPassword;
  prepareForDeploymentOnPort: 8080.

WAAdmin defaultDispatcher defaultName: 'scolr'.
Transcript show: 'Scolr has started'; cr.
