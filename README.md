# LocalStack

### Launch Container

```
docker run -d \
    --name LocalStack \
    -p 4566:4566 \
    --restart=unless-stopped \
    -v /var/run/docker.sock:/var/run/docker.sock \
    sukibijo9852/localstack:latest
```

### AWS Feature Coverage

https://docs.localstack.cloud/user-guide/aws/feature-coverage/
