|  adminEmail senderForNotificationEmails |

adminEmail := (OSEnvironment current at: 'ADMIN_EMAIL' ifAbsent: nil).
senderForNotificationEmails := (OSEnvironment current at: 'NOTIFICATION_EMAIL' ifAbsent: nil).

ReviewnatorDeployer
  adminEmail: adminEmail;
  senderForNotificationEmails: senderForNotificationEmails ;
  prepareForDeploymentOnPort: 8080.

WAAdmin defaultDispatcher defaultName: 'scolr'.
Transcript show: 'Scolr has started'; cr.
