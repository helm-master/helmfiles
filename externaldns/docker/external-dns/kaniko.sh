kubectl run kaniko \
--rm --stdin=true \
--image=gcr.io/kaniko-project/executor:arm64 --restart=Never \
--overrides='{
  "apiVersion": "v1",
  "spec": {
    "containers": [
      {
        "name": "kaniko",
        "image": "gcr.io/kaniko-project/executor:arm64",
        "stdin": true,
        "stdinOnce": true,
        "args": [
          "--build-arg=ARCH=arm64v8",
          "--dockerfile=Dockerfile",
          "--context=git://github.com/kubernetes-sigs/external-dns",
          "--destination=jmcarbo/external-dns:arm64-0.7.4"
        ],
        "volumeMounts": [
          {
            "name": "docker-config",
            "mountPath": "/kaniko/.docker/"
          }
        ]
      }
    ],
    "volumes": [
      {
        "name": "docker-config",
        "configMap": {
          "name": "docker-config"
        }
      }
    ]
  }
}'
