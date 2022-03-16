## docker-git

同一 Git 代码托管平台的账号，在同一台电脑上共存的解决方案

### Docker Hub

- https://hub.docker.com/r/devcto/git

### 使用说明

```bash
docker pull devcto/git:latest

docker run --rm --name git-alpine -itd devcto/git:latest

docker exec git-alpine git --version

docker exec -it git-alpine sh
```

更多教程请查看 **[WIKI](https://github.com/jetsung/docker-git/wiki)**
