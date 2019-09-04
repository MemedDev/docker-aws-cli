# Memed Docker AWS CLI

Amazon Linux docker image with `aws-cli` installed.

[Source code at GitHub](https://github.com/MemedDev/docker-aws-cli).

[Registry at DockerHub](https://hub.docker.com/r/memeddev/docker-aws-cli).

## Running

```bash
docker run -it \
-v $HOME/.aws:/root/.aws \
-e AWS_PROFILE=<some-profile> \
memeddev/docker-aws-cli:0.1.0 aws s3 ls
```

> For security reasons, the image does not contains AWS Credentials. Therefore, user must pass `$HOME/.aws` as volume, and `-e AWS_PROFILE=<some-profile>` to have access to AWS API.
> More information at [AWS Docs](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-configure-files.html).
