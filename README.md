# webm-azure-devops
starting point for testing POC on webm on azure

how to add SAG repository to local helm

```
helm repo add sag-repo https://npapazov.github.io/webm-azure-devops/chart-repo
```

how to search for SAG helm charts

```
helm search repo universal-messaging
```
sample output:
```
NAME                            CHART VERSION   APP VERSION     DESCRIPTION
sag-repo/universal-messaging       0.1.0           10.5.0.4        A Helm chart for Kubernetes
```



how to run the UM chart:
```
helm install -n <namespace> --set imageCredentials.registry="https://index.docker.io/v1/"   --set imageCredentials.username="<docker hub user name>"   --set imageCredentials.password="<docker hub password>"    <release name>  sag-repo/universal-messaging
```
