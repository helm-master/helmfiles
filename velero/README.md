# Velero helmfile

## Deployment

You can use helmfile --file example-deployment.yaml --environment development apply. In this way you can add backup and schedule resources.

## Caveats

* When using minio in development environment publicUrl is not working so no logs can be accessed.
