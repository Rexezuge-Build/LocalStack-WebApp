# LocalStack

### Launch Container

```
docker volume create LocalStack_DATA
docker run -d \
    --name LocalStack \
    -p 4566:4566 \
    -p 4510-4559:4510-4559 \
    --restart=unless-stopped \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /var/lib/localstack:LocalStack_DATA \
    -e PERSISTENCE=1 \
    sukibijo9852/localstack:latest
```

### AWS Feature Coverage

https://docs.localstack.cloud/user-guide/aws/feature-coverage/
