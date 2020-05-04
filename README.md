# webm-azure-devops
starting point for testing POC on webm on azure

how to run the UM chart:
```
helm install -n <namespace> --set imageCredentials.registry="https://index.docker.io/v1/"   --set imageCredentials.username="<docker hub user name>"   --set imageCredentials.password="<docker hub password>"    <release name>  charts/universal-messaging/
```
