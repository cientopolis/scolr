baseline
postLoadActions
	"Start a Server on 8080 and Setup Repository"

	GTPlayground
		edit:
			'ReviewnatorDeployer prepareForDeploymentOnPort: 8000 adminEmail: ''scolr@yourdomain.com'' smtp: ''yourdomain''.

WAAdmin defaultDispatcher defaultName: ''scolr''.'
		label: 'Scolr'