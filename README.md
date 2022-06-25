Link: \[[**Docker Hub**](https://hub.docker.com/r/a86436925/sftp)\]

Use sftp by root.

docker-compose example:
```yaml
version: "3.9"
volumes:
  sftp_vol:
    external: true
services:
  sftp:
    image: a86436925/sftp
    ports:
      - "1022:22"
    volumes:
      - sftp_vol:/root/sftp_vol
    environment:
      - TZ=Asia/Taipei
      - PASSWORD=root_pass
```